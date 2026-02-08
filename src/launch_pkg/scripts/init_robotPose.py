#!/usr/bin/env python3
# Author: DuyKhang


import rospy
import json
from geometry_msgs.msg import PoseWithCovarianceStamped

def load_initial_pose(json_path):
    with open(json_path, 'r') as f:
        data = json.load(f)
    return data

def publish_initial_pose():
    rospy.init_node('initial_pose_publisher', anonymous=True)
    pub = rospy.Publisher('/initialpose', PoseWithCovarianceStamped, queue_size=10)
    rospy.sleep(1)  
    
    json_path = '/home/jetson/thesisAutonomous_ws/src/robot_navigation/ProductPose/Start.json'
    pose_data = load_initial_pose(json_path)
    
    msg = PoseWithCovarianceStamped()
    msg.header.stamp = rospy.Time.now()
    msg.header.frame_id = 'map'
    
    msg.pose.pose.position.x = pose_data['positon'][0]
    msg.pose.pose.position.y = pose_data['positon'][1]
    msg.pose.pose.position.z = pose_data['positon'][2]
    
    msg.pose.pose.orientation.x = pose_data['orientation'][0]
    msg.pose.pose.orientation.y = pose_data['orientation'][1]
    msg.pose.pose.orientation.z = pose_data['orientation'][2]
    msg.pose.pose.orientation.w = pose_data['orientation'][3]
    
#    msg.pose.covariance = [0.0] * 36  # Giữ nguyên ma trận covariance
    msg.pose.covariance = [
                0.25, 0, 0, 0, 0, 0,
                    0, 0.25, 0, 0, 0, 0,
                        0, 0, 0.0, 0, 0, 0,
                            0, 0, 0, 0.0, 0, 0,
                                0, 0, 0, 0, 0.0, 0,
                                    0, 0, 0, 0, 0, 0.06853892326654787  # yaw covariance
                                    ]
    
    rospy.loginfo("Publishing initial pose from start.json")
    pub.publish(msg)
    rospy.sleep(1)

if __name__ == '__main__':
    try:
        publish_initial_pose()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
