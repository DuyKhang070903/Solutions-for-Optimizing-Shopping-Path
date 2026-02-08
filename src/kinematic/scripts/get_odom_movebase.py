#!/usr/bin/env python3
#Authors : DuyKhang

import rospy
import sys
import time
import threading
import signal

from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist, TwistWithCovarianceStamped, Pose, Quaternion, PoseStamped, PoseWithCovarianceStamped

import tf
from tf.transformations import euler_from_quaternion, quaternion_from_euler
from std_msgs.msg import Int16, Float64, Float32MultiArray
from math import sin , cos , pi , atan2, radians, degrees

"""
Tao odom movebase tu odom ekf vaf robot wheel vel 
"""

class Odom_MB():
    def __init__(self):

        print("ROS Initial!")
        rospy.init_node('odom_mb', anonymous= False)
        self.rate = rospy.Rate(30)

        self.frame_id = "base_link"

        rospy.Subscriber("/odom_encoder", Odometry, self.callback_odom_encoder)
        self.odom_encoder = Odometry()
        self.pre_odom_encoder = Odometry()
        self.is_recv_odom_encoder = 0

        rospy.Subscriber("/robot_pose_ekf/odom_combined", PoseWithCovarianceStamped, self.callback_odom_combined)
        self.odom_combined = PoseWithCovarianceStamped()
        self.pre_odom_combined = PoseWithCovarianceStamped()
        self.is_recv_odom_combined = 0

        self.odom_pub = rospy.Publisher('/odom_movebase', Odometry, queue_size=10)
        self.odom_data = Odometry()
        self.process = 0

    def callback_odom_encoder(self, data):
        self.odom_encoder = data
        self.is_recv_odom_encoder = 1

    def callback_odom_combined(self, data):
        self.odom_combined = data
        self.is_recv_odom_combined = 1

    def run(self):
        while not rospy.is_shutdown(): 
            if self.process == 0:    # cho nhan duoc full du lieu
                c_k = 0
                if self.is_recv_odom_encoder:
                    c_k += 1
                    print("Received odom_encoder")
                if self.is_recv_odom_combined:
                    c_k += 1
                    print("Received odom_combined")
                if c_k == 2:
                    self.process = 1
                    print("Received all data")

            elif self.process == 1:
                if self.pre_odom_combined != self.odom_combined and self.pre_odom_encoder != self.odom_encoder:
                    #print("RECEIVED NEW DATA => Publish odom")
                    self.pre_odom_combined = self.odom_combined
                    self.pre_odom_encoder = self.odom_encoder

                    # -- update data
                    self.odom_data.header = self.odom_combined.header
                    self.odom_data.child_frame_id = self.frame_id 
                    self.odom_data.pose = self.odom_combined.pose
                    self.odom_data.twist = self.odom_encoder.twist

                    # -- publish odom
                    self.odom_pub.publish(self.odom_data)

            self.rate.sleep()

def main():
    print('Program starting')
    try:
        program = Odom_MB()
        program.run()
    except rospy.ROSInterruptException:
        pass
    print('Programer stopped')

if __name__ == '__main__':
    main()
