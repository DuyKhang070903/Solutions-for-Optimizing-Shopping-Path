#!/usr/bin/env python

import cv2 as cv
import numpy as np
import rospy
from std_msgs.msg import String
from pyzbar import pyzbar

def unsharp_masking(image, sigma=1.0, strength=1.5):
    """Làm nét ảnh bằng Unsharp Masking"""
    blurred = cv.GaussianBlur(image, (0, 0), sigma)
    sharpened = cv.addWeighted(image, 1 + strength, blurred, -strength, 0)
    return sharpened

def preprocess_image(image):
    gray = cv.cvtColor(image, cv.COLOR_BGR2GRAY)

   
    clahe = cv.createCLAHE(clipLimit=3.0, tileGridSize=(8, 8))
    gray = clahe.apply(gray)

    # Giảm nhiễu
    blur = cv.medianBlur(gray, 3)

    # Tăng độ nét
    sharpen = unsharp_masking(gray)

    return sharpen

def scan_qr_code(frame, detected_qr):
    """Quét QR code bằng OpenCV và Pyzbar"""
    detector = cv.QRCodeDetector()
    
    retval, decoded_info, points, _ = detector.detectAndDecodeMulti(frame)
    qr_data = set()  # Dùng set để lưu dữ liệu không trùng lặp
    
    if retval:
        for info in decoded_info:
            if info and info not in detected_qr:
                qr_data.add(info)

    # Nếu OpenCV không quét được, dùng Pyzbar
    if not qr_data:
        barcodes = pyzbar.decode(frame)
        for barcode in barcodes:
            qr_text = barcode.data.decode("utf-8")
            if qr_text not in detected_qr:
                qr_data.add(qr_text)
    
    return qr_data

def qr_code_scanner():
    """Node ROS để quét QR Code và gửi dữ liệu"""
    rospy.init_node('qr_code_scanner', anonymous=True)
    qr_pub = rospy.Publisher('/qr_code_data', String, queue_size=10)

    cap = cv.VideoCapture('/dev/camera_port')  
    cap.set(cv.CAP_PROP_FRAME_WIDTH, 1280)
    cap.set(cv.CAP_PROP_FRAME_HEIGHT, 720)
    cap.set(cv.CAP_PROP_FPS, 30)

    detected_qr = set()  # Bộ nhớ tạm lưu QR codes đã quét

    while not rospy.is_shutdown():
        ret, frame = cap.read()
        if not ret:
            rospy.logwarn("Không thể đọc frame từ camera, kiểm tra kết nối!")
            continue

        processed_frame = preprocess_image(frame)
        new_qr_data = scan_qr_code(processed_frame, detected_qr)

        if new_qr_data:
            detected_qr.update(new_qr_data)  
            formatted_data = "\r\n".join(new_qr_data)
            qr_pub.publish(formatted_data)
            rospy.loginfo(f"QR Codes Sent:\n{formatted_data}")

        #cv.imshow('QR Scanner', frame)
        if cv.waitKey(1) == ord('q'):
            break

    cap.release()
    cv.destroyAllWindows()

if __name__ == "__main__":
    try:
        qr_code_scanner()
    except rospy.ROSInterruptException:
        pass
