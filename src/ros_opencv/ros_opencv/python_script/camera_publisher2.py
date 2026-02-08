#!/usr/bin/env python

import cv2 as cv
import numpy as np
import rospy
import gc
from std_msgs.msg import String
from pyzbar import pyzbar

def unsharp_masking(image, sigma=0.5, strength=1.2):
    """Nét ảnh bằng Unsharp Masking"""
    blurred = cv.GaussianBlur(image, (3, 3), sigma)
    sharpened = cv.addWeighted(image, 1 + strength, blurred, -strength, 0)
    return sharpened

def preprocess_image(image):
    gray = cv.cvtColor(image, cv.COLOR_BGR2GRAY)
    blur = cv.GaussianBlur(gray, (3, 3), 0)  # Giảm độ nhiễu nhẹ
    sharpen = unsharp_masking(blur)  # Làm nét ảnh

    # Dùng Otsu threshold thay cho Adaptive Threshold
    _, binary = cv.threshold(sharpen, 0, 255, cv.THRESH_BINARY + cv.THRESH_OTSU)
    return binary

def scan_qr_code(frame):
    """OpenCV --> Pyzbar"""
    detector = cv.QRCodeDetector()
    retval, decoded_info, points, _ = detector.detectAndDecodeMulti(frame)
    
    if retval and decoded_info:
        return decoded_info, points

    barcodes = pyzbar.decode(frame)
    qr_data, qr_points = [], []

    for barcode in barcodes:
        if barcode.type == "QRCODE":
            qr_data.append(barcode.data.decode("utf-8"))
            x, y, w, h = barcode.rect
            qr_points.append(np.array([[x, y], [x + w, y], [x + w, y + h], [x, y + h]], dtype=np.int32))
    
    return qr_data, qr_points

def qr_code_scanner():
    rospy.init_node('qr_code_scanner', anonymous=True)
    qr_pub = rospy.Publisher('/qr_code_data', String, queue_size=3)

    cap = cv.VideoCapture(2)  
    cap.set(cv.CAP_PROP_FRAME_WIDTH, 1280)
    cap.set(cv.CAP_PROP_FRAME_HEIGHT, 720)
    cap.set(cv.CAP_PROP_FPS, 15)  # Giảm FPS xuống 15

    last_data = ""

    while not rospy.is_shutdown():
        ret, frame = cap.read()
        if not ret:
            rospy.logwarn("Không thể nhận diện khung hình, kiểm tra camera!")
            continue

        # Giảm độ phân giải để tiết kiệm RAM
        frame_resized = cv.resize(frame, (640, 360), interpolation=cv.INTER_AREA)

        processed_frame = preprocess_image(frame_resized)
        qr_results, qr_points = scan_qr_code(processed_frame)

        for data, points in zip(qr_results, qr_points):
            if data and data != last_data:
                rospy.loginfo(f"Nội dung QR: {data}")
                qr_pub.publish(data)
                last_data = data

            # Vẽ khung QR Code
            pts = np.int32(points).reshape(-1, 2)
            for i in range(len(pts)):
                cv.line(frame_resized, tuple(pts[i]), tuple(pts[(i + 1) % 4]), (0, 255, 0), 2)

        cv.imshow('QR Scanner', frame_resized)

        # Giải phóng bộ nhớ mỗi vòng lặp
        gc.collect()

        if cv.waitKey(1) == ord('q'):
            break

    cap.release()
    cv.destroyAllWindows()

if __name__ == "__main__":
    try:
        qr_code_scanner()
    except rospy.ROSInterruptException:
        pass
