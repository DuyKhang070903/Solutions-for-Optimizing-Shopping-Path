#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist           # Thư viện ROS để nhận lệnh vận tốc
from std_msgs.msg import Int16, Float64, Float32MultiArray    # Để gửi dữ liệu dạng mảng số nguyên
import time

from math import pi                           # Sử dụng số pi cho tính toán góc và vận tốc
import tf
from tf.transformations import euler_from_quaternion, quaternion_from_euler

class WheelShow():
    def __init__(self):
        rospy.init_node('Display_wheel', anonymous=False)
        self.rate = rospy.Rate(30)  # Tần số thực hiện vòng lặp là 30 Hz

        # Đăng ký callback để nhận van toc tu banh xe -> hien thi vi tri 2 banh
        rospy.Subscriber("/robot_wheel_vel", Float32MultiArray, self.driverRespond_callback)
        self.driver_respond = Float32MultiArray()
        self.is_cmdVel = 0

        self.br = tf.TransformBroadcaster()
        self.pre_t = time.time()

        self.x_tf = 0.0
        self.y_tf = 0.1925
        self.theta_start = 0.0
        self.pre_leftwheel_angle = 0   
        self.pre_rightwheel_angle = 0

        self.translation_leftwheel = (self.x_tf, self.y_tf, 0.0)
        self.translation_rightwheel = (self.x_tf, -self.y_tf, 0.0)
        self.quanternion_leftwheel = quaternion_from_euler(0, self.theta_start, 0)
        self.quanternion_rightwheel = quaternion_from_euler(0, self.theta_start, 0)

    # Hàm callback khi có dữ liệu mới từ topic /cmd_vel
    def driverRespond_callback(self, data):
        self.driver_respond = data
        self.is_cmdVel = 1


    def run(self):
        while not rospy.is_shutdown():
            # - Send transform base_link to left-wheel and right-wheel
            if self.is_cmdVel:
                # - convert rpm to rad/s 
                v_left = self.driver_respond.data[0]*2*pi/60
                v_right = self.driver_respond.data[1]*2*pi/60

                time_now = time.time() - self.pre_t

                leftwheel_angle = self.pre_leftwheel_angle + v_left * time_now
                rightwheel_angle = self.pre_rightwheel_angle + v_right * time_now

                leftwheel_translation = self.translation_leftwheel
                leftwheel_quanternion = quaternion_from_euler(0, leftwheel_angle, 0)            

                rightwheel_translation = self.translation_rightwheel
                rightwheel_quanternion = quaternion_from_euler(0, rightwheel_angle, 0)

                self.br.sendTransform(leftwheel_translation, leftwheel_quanternion, rospy.Time.now(), 'left-wheel', 'base_link')
                self.br.sendTransform(rightwheel_translation, rightwheel_quanternion, rospy.Time.now(), 'right-wheel', 'base_link')

                self.pre_leftwheel_angle = leftwheel_angle
                self.pre_rightwheel_angle = rightwheel_angle
                self.pre_t = time.time()

            else:
                self.pre_t = time.time()
                
            self.rate.sleep()

# Hàm main để khởi động chương trình
def main():
    print('Starting main program')
    controlMT = WheelShow()
    controlMT.run()

# Chạy chương trình nếu script được gọi trực tiếp
if __name__ == '__main__':
    main()
