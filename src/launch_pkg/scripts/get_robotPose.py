#!/usr/bin/env python3
# Author: DuyKhang

from sensor_msgs.msg import PointCloud2, LaserScan
from std_msgs.msg import Int8, String
 
from math import atan2, sin, cos, sqrt, fabs, degrees, isnan, radians
from math import pi as PI
import rospy
import time
import copy

import json
import os
import numpy as np

from visualization_msgs.msg import Marker
from geometry_msgs.msg import Point, PoseStamped, TwistWithCovarianceStamped

class Average_data():
    def __init__(self):
        rospy.init_node('average_node', anonymous = True)
        self.rate = rospy.Rate(50)
        
        self.dir_pose = '/home/jetson/thesisAutonomous_ws/src/robot_navigation/ProductPose'

        rospy.Subscriber("/robot_pose", PoseStamped, self.callback_robotpose)
        self.data_robot_pose = PoseStamped()
        self.is_recv_robotpose = False

        rospy.Subscriber("/Keyboard_cmd", String, self.callback_KeyboardCmd)
        self.keyboad_cmd = String()

        self.process = 0
        self.flag_mode = 0
        self.pre_flag_mode = 0
        self.is_still_running = False

        # Danh sách để lưu trữ dữ liệu 

        self.ctime_get_pose = time.time()
        self.time_getpose = 1

        self.ls_pose_x = []
        self.ls_pose_y = []
        self.ls_pose_z = []
        self.ls_pose_w = []
        self.ls_pose_exec = []

        self.pre_taskstatus = 0
        self.count = 0

    def callback_KeyboardCmd(self, data):
        self.keyboad_cmd = data

        if self.keyboad_cmd.data == '2':     #Reset
            print("################################## STOP && RESET DATA !!!######################################")
            # self.flag_mode = 7
            # self.stop()
            self.process = -1
            # self.pre_flag_mode = 0
            # self.step = 0
            self.is_still_running = False

        elif self.keyboad_cmd.data == '1':
            self.flag_mode = 1
            print("Bắt đầu thu thap du lieu cac ke hang")

    def callback_robotpose(self, data):
        self.data_robot_pose = data
        self.is_recv_robotpose = True

    def add_pose(self, filename, x, y, z, w):
        # Dữ liệu cần lưu
        data = {
            "positon": [x, y, 0],
            "orientation": [0, 0, z, w]
        }        

        with open(filename, "w", encoding="utf-8") as file:
            json.dump(data, file, indent=4, ensure_ascii=False)

    def run(self):
        while not rospy.is_shutdown():
            if self.process == 0:
                self.process = -1

            # -- Stop and reset data
            elif self.process == -1:
                # - wait keyboard cmd and program in wait mode
                if self.flag_mode == 1 and self.is_still_running == False:
                    self.process = self.flag_mode
                    self.pre_flag_mode = self.flag_mode
                    self.step = 0
                    self.is_still_running = True
                    self.flag_mode = 0
                    print("Change mode to", self.process)

            elif self.process == 1:       
                if self.is_recv_robotpose == False:
                    self.rate.sleep()
                    continue
                    
                self.is_recv_robotpose = False

                numave = 10 
                if self.count < 10:
                    print("Start get data")
                    self.ctime_get_pose = time.time()
                    x = self.data_robot_pose.pose.position.x
                    y = self.data_robot_pose.pose.position.y
                    z = self.data_robot_pose.pose.orientation.z
                    w = self.data_robot_pose.pose.orientation.w

                    self.ls_pose_x.append(x)
                    self.ls_pose_y.append(y)
                    self.ls_pose_z.append(z)
                    self.ls_pose_w.append(w)

                    self.count += 1
                else:
            
                    # ghi vào file json
                    pose_x = np.array(self.ls_pose_x)
                    pose_y = np.array(self.ls_pose_y)
                    pose_z = np.array(self.ls_pose_z)
                    pose_w = np.array(self.ls_pose_w)

                    mean_x = np.mean(pose_x)
                    mean_y = np.mean(pose_y)
                    mean_z = np.mean(pose_z)
                    mean_w = np.mean(pose_w)

                    file_name = input("Nhập tên file JSON (không cần .json): ") + ".json"
                    
                    file_path = os.path.join(self.dir_pose, file_name)
                    self.add_pose(file_path, mean_x, mean_y, mean_z, mean_w)
                    print(f"Đã tạo và lưu file {file_path} thành công!")

                    self.process = -1
                    self.ls_pose_x = []
                    self.ls_pose_y = []
                    self.ls_pose_z = []
                    self.ls_pose_w = []

                    self.count = 0

            self.rate.sleep()

def main():
    print ("--- Thu thap du lieu cac ke hang ---")
    program = Average_data()
    program.run()

    print ("--- close! ---")

if __name__ == '__main__':
    main()




