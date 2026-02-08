;; Auto-generated. Do not edit!


(when (boundp 'robot_navigation::ReplanPath)
  (if (not (find-package "ROBOT_NAVIGATION"))
    (make-package "ROBOT_NAVIGATION"))
  (shadow 'ReplanPath (find-package "ROBOT_NAVIGATION")))
(unless (find-package "ROBOT_NAVIGATION::REPLANPATH")
  (make-package "ROBOT_NAVIGATION::REPLANPATH"))
(unless (find-package "ROBOT_NAVIGATION::REPLANPATHREQUEST")
  (make-package "ROBOT_NAVIGATION::REPLANPATHREQUEST"))
(unless (find-package "ROBOT_NAVIGATION::REPLANPATHRESPONSE")
  (make-package "ROBOT_NAVIGATION::REPLANPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_navigation::ReplanPathRequest
  :super ros::object
  :slots (_start_pose _goal_pose ))

(defmethod robot_navigation::ReplanPathRequest
  (:init
   (&key
    ((:start_pose __start_pose) (instance geometry_msgs::PoseStamped :init))
    ((:goal_pose __goal_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _start_pose __start_pose)
   (setq _goal_pose __goal_pose)
   self)
  (:start_pose
   (&rest __start_pose)
   (if (keywordp (car __start_pose))
       (send* _start_pose __start_pose)
     (progn
       (if __start_pose (setq _start_pose (car __start_pose)))
       _start_pose)))
  (:goal_pose
   (&rest __goal_pose)
   (if (keywordp (car __goal_pose))
       (send* _goal_pose __goal_pose)
     (progn
       (if __goal_pose (setq _goal_pose (car __goal_pose)))
       _goal_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _start_pose
    (send _start_pose :serialization-length)
    ;; geometry_msgs/PoseStamped _goal_pose
    (send _goal_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _start_pose
       (send _start_pose :serialize s)
     ;; geometry_msgs/PoseStamped _goal_pose
       (send _goal_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _start_pose
     (send _start_pose :deserialize buf ptr-) (incf ptr- (send _start_pose :serialization-length))
   ;; geometry_msgs/PoseStamped _goal_pose
     (send _goal_pose :deserialize buf ptr-) (incf ptr- (send _goal_pose :serialization-length))
   ;;
   self)
  )

(defclass robot_navigation::ReplanPathResponse
  :super ros::object
  :slots (_planned_path _cost ))

(defmethod robot_navigation::ReplanPathResponse
  (:init
   (&key
    ((:planned_path __planned_path) (instance nav_msgs::Path :init))
    ((:cost __cost) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _planned_path __planned_path)
   (setq _cost __cost)
   self)
  (:planned_path
   (&rest __planned_path)
   (if (keywordp (car __planned_path))
       (send* _planned_path __planned_path)
     (progn
       (if __planned_path (setq _planned_path (car __planned_path)))
       _planned_path)))
  (:cost
   (&rest __cost)
   (if (keywordp (car __cost))
       (send* _cost __cost)
     (progn
       (if __cost (setq _cost (car __cost)))
       _cost)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _planned_path
    (send _planned_path :serialization-length)
    ;; std_msgs/Float32 _cost
    (send _cost :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _planned_path
       (send _planned_path :serialize s)
     ;; std_msgs/Float32 _cost
       (send _cost :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _planned_path
     (send _planned_path :deserialize buf ptr-) (incf ptr- (send _planned_path :serialization-length))
   ;; std_msgs/Float32 _cost
     (send _cost :deserialize buf ptr-) (incf ptr- (send _cost :serialization-length))
   ;;
   self)
  )

(defclass robot_navigation::ReplanPath
  :super ros::object
  :slots ())

(setf (get robot_navigation::ReplanPath :md5sum-) "570ec26491df9ed08af93654de135263")
(setf (get robot_navigation::ReplanPath :datatype-) "robot_navigation/ReplanPath")
(setf (get robot_navigation::ReplanPath :request) robot_navigation::ReplanPathRequest)
(setf (get robot_navigation::ReplanPath :response) robot_navigation::ReplanPathResponse)

(defmethod robot_navigation::ReplanPathRequest
  (:response () (instance robot_navigation::ReplanPathResponse :init)))

(setf (get robot_navigation::ReplanPathRequest :md5sum-) "570ec26491df9ed08af93654de135263")
(setf (get robot_navigation::ReplanPathRequest :datatype-) "robot_navigation/ReplanPathRequest")
(setf (get robot_navigation::ReplanPathRequest :definition-)
      "geometry_msgs/PoseStamped start_pose
geometry_msgs/PoseStamped goal_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
nav_msgs/Path planned_path
std_msgs/Float32 cost

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/Float32
")

(setf (get robot_navigation::ReplanPathResponse :md5sum-) "570ec26491df9ed08af93654de135263")
(setf (get robot_navigation::ReplanPathResponse :datatype-) "robot_navigation/ReplanPathResponse")
(setf (get robot_navigation::ReplanPathResponse :definition-)
      "geometry_msgs/PoseStamped start_pose
geometry_msgs/PoseStamped goal_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
nav_msgs/Path planned_path
std_msgs/Float32 cost

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/Float32
")



(provide :robot_navigation/ReplanPath "570ec26491df9ed08af93654de135263")


