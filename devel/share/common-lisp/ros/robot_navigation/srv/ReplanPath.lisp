; Auto-generated. Do not edit!


(cl:in-package robot_navigation-srv)


;//! \htmlinclude ReplanPath-request.msg.html

(cl:defclass <ReplanPath-request> (roslisp-msg-protocol:ros-message)
  ((start_pose
    :reader start_pose
    :initarg :start_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass ReplanPath-request (<ReplanPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReplanPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReplanPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_navigation-srv:<ReplanPath-request> is deprecated: use robot_navigation-srv:ReplanPath-request instead.")))

(cl:ensure-generic-function 'start_pose-val :lambda-list '(m))
(cl:defmethod start_pose-val ((m <ReplanPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-srv:start_pose-val is deprecated.  Use robot_navigation-srv:start_pose instead.")
  (start_pose m))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <ReplanPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-srv:goal_pose-val is deprecated.  Use robot_navigation-srv:goal_pose instead.")
  (goal_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReplanPath-request>) ostream)
  "Serializes a message object of type '<ReplanPath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReplanPath-request>) istream)
  "Deserializes a message object of type '<ReplanPath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReplanPath-request>)))
  "Returns string type for a service object of type '<ReplanPath-request>"
  "robot_navigation/ReplanPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReplanPath-request)))
  "Returns string type for a service object of type 'ReplanPath-request"
  "robot_navigation/ReplanPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReplanPath-request>)))
  "Returns md5sum for a message object of type '<ReplanPath-request>"
  "570ec26491df9ed08af93654de135263")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReplanPath-request)))
  "Returns md5sum for a message object of type 'ReplanPath-request"
  "570ec26491df9ed08af93654de135263")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReplanPath-request>)))
  "Returns full string definition for message of type '<ReplanPath-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped start_pose~%geometry_msgs/PoseStamped goal_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReplanPath-request)))
  "Returns full string definition for message of type 'ReplanPath-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped start_pose~%geometry_msgs/PoseStamped goal_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReplanPath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReplanPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReplanPath-request
    (cl:cons ':start_pose (start_pose msg))
    (cl:cons ':goal_pose (goal_pose msg))
))
;//! \htmlinclude ReplanPath-response.msg.html

(cl:defclass <ReplanPath-response> (roslisp-msg-protocol:ros-message)
  ((planned_path
    :reader planned_path
    :initarg :planned_path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (cost
    :reader cost
    :initarg :cost
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass ReplanPath-response (<ReplanPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReplanPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReplanPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_navigation-srv:<ReplanPath-response> is deprecated: use robot_navigation-srv:ReplanPath-response instead.")))

(cl:ensure-generic-function 'planned_path-val :lambda-list '(m))
(cl:defmethod planned_path-val ((m <ReplanPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-srv:planned_path-val is deprecated.  Use robot_navigation-srv:planned_path instead.")
  (planned_path m))

(cl:ensure-generic-function 'cost-val :lambda-list '(m))
(cl:defmethod cost-val ((m <ReplanPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-srv:cost-val is deprecated.  Use robot_navigation-srv:cost instead.")
  (cost m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReplanPath-response>) ostream)
  "Serializes a message object of type '<ReplanPath-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'planned_path) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cost) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReplanPath-response>) istream)
  "Deserializes a message object of type '<ReplanPath-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'planned_path) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cost) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReplanPath-response>)))
  "Returns string type for a service object of type '<ReplanPath-response>"
  "robot_navigation/ReplanPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReplanPath-response)))
  "Returns string type for a service object of type 'ReplanPath-response"
  "robot_navigation/ReplanPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReplanPath-response>)))
  "Returns md5sum for a message object of type '<ReplanPath-response>"
  "570ec26491df9ed08af93654de135263")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReplanPath-response)))
  "Returns md5sum for a message object of type 'ReplanPath-response"
  "570ec26491df9ed08af93654de135263")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReplanPath-response>)))
  "Returns full string definition for message of type '<ReplanPath-response>"
  (cl:format cl:nil "nav_msgs/Path planned_path~%std_msgs/Float32 cost~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReplanPath-response)))
  "Returns full string definition for message of type 'ReplanPath-response"
  (cl:format cl:nil "nav_msgs/Path planned_path~%std_msgs/Float32 cost~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReplanPath-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'planned_path))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cost))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReplanPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReplanPath-response
    (cl:cons ':planned_path (planned_path msg))
    (cl:cons ':cost (cost msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReplanPath)))
  'ReplanPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReplanPath)))
  'ReplanPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReplanPath)))
  "Returns string type for a service object of type '<ReplanPath>"
  "robot_navigation/ReplanPath")