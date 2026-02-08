; Auto-generated. Do not edit!


(cl:in-package robot_update-srv)


;//! \htmlinclude updateFWSignal-request.msg.html

(cl:defclass <updateFWSignal-request> (roslisp-msg-protocol:ros-message)
  ((FW_name
    :reader FW_name
    :initarg :FW_name
    :type cl:string
    :initform ""))
)

(cl:defclass updateFWSignal-request (<updateFWSignal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <updateFWSignal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'updateFWSignal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_update-srv:<updateFWSignal-request> is deprecated: use robot_update-srv:updateFWSignal-request instead.")))

(cl:ensure-generic-function 'FW_name-val :lambda-list '(m))
(cl:defmethod FW_name-val ((m <updateFWSignal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_update-srv:FW_name-val is deprecated.  Use robot_update-srv:FW_name instead.")
  (FW_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <updateFWSignal-request>) ostream)
  "Serializes a message object of type '<updateFWSignal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'FW_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'FW_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <updateFWSignal-request>) istream)
  "Deserializes a message object of type '<updateFWSignal-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'FW_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'FW_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<updateFWSignal-request>)))
  "Returns string type for a service object of type '<updateFWSignal-request>"
  "robot_update/updateFWSignalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'updateFWSignal-request)))
  "Returns string type for a service object of type 'updateFWSignal-request"
  "robot_update/updateFWSignalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<updateFWSignal-request>)))
  "Returns md5sum for a message object of type '<updateFWSignal-request>"
  "9c5eee2d22e1212d864abfe1f867776b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'updateFWSignal-request)))
  "Returns md5sum for a message object of type 'updateFWSignal-request"
  "9c5eee2d22e1212d864abfe1f867776b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<updateFWSignal-request>)))
  "Returns full string definition for message of type '<updateFWSignal-request>"
  (cl:format cl:nil "# Request: FW name~%string FW_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'updateFWSignal-request)))
  "Returns full string definition for message of type 'updateFWSignal-request"
  (cl:format cl:nil "# Request: FW name~%string FW_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <updateFWSignal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'FW_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <updateFWSignal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'updateFWSignal-request
    (cl:cons ':FW_name (FW_name msg))
))
;//! \htmlinclude updateFWSignal-response.msg.html

(cl:defclass <updateFWSignal-response> (roslisp-msg-protocol:ros-message)
  ((signalSuccess
    :reader signalSuccess
    :initarg :signalSuccess
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass updateFWSignal-response (<updateFWSignal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <updateFWSignal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'updateFWSignal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_update-srv:<updateFWSignal-response> is deprecated: use robot_update-srv:updateFWSignal-response instead.")))

(cl:ensure-generic-function 'signalSuccess-val :lambda-list '(m))
(cl:defmethod signalSuccess-val ((m <updateFWSignal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_update-srv:signalSuccess-val is deprecated.  Use robot_update-srv:signalSuccess instead.")
  (signalSuccess m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <updateFWSignal-response>) ostream)
  "Serializes a message object of type '<updateFWSignal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'signalSuccess) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <updateFWSignal-response>) istream)
  "Deserializes a message object of type '<updateFWSignal-response>"
    (cl:setf (cl:slot-value msg 'signalSuccess) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<updateFWSignal-response>)))
  "Returns string type for a service object of type '<updateFWSignal-response>"
  "robot_update/updateFWSignalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'updateFWSignal-response)))
  "Returns string type for a service object of type 'updateFWSignal-response"
  "robot_update/updateFWSignalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<updateFWSignal-response>)))
  "Returns md5sum for a message object of type '<updateFWSignal-response>"
  "9c5eee2d22e1212d864abfe1f867776b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'updateFWSignal-response)))
  "Returns md5sum for a message object of type 'updateFWSignal-response"
  "9c5eee2d22e1212d864abfe1f867776b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<updateFWSignal-response>)))
  "Returns full string definition for message of type '<updateFWSignal-response>"
  (cl:format cl:nil "# Response: Signal ~%bool signalSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'updateFWSignal-response)))
  "Returns full string definition for message of type 'updateFWSignal-response"
  (cl:format cl:nil "# Response: Signal ~%bool signalSuccess~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <updateFWSignal-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <updateFWSignal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'updateFWSignal-response
    (cl:cons ':signalSuccess (signalSuccess msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'updateFWSignal)))
  'updateFWSignal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'updateFWSignal)))
  'updateFWSignal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'updateFWSignal)))
  "Returns string type for a service object of type '<updateFWSignal>"
  "robot_update/updateFWSignal")