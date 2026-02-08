#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def callback(msg):
    # In ra dữ liệu thực tế với xuống dòng
    print("Received QR Data:")
    print(msg.data)  # Khi dùng print, các dòng sẽ được xuống dòng đúng

def listener():
    rospy.init_node('qr_code_listener', anonymous=True)
    rospy.Subscriber('/qr_code_data', String, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
