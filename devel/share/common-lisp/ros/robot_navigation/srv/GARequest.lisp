; Auto-generated. Do not edit!


(cl:in-package robot_navigation-srv)


;//! \htmlinclude GARequest-request.msg.html

(cl:defclass <GARequest-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type cl:string
    :initform "")
   (destinations
    :reader destinations
    :initarg :destinations
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GARequest-request (<GARequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GARequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GARequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_navigation-srv:<GARequest-request> is deprecated: use robot_navigation-srv:GARequest-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <GARequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-srv:start-val is deprecated.  Use robot_navigation-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'destinations-val :lambda-list '(m))
(cl:defmethod destinations-val ((m <GARequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-srv:destinations-val is deprecated.  Use robot_navigation-srv:destinations instead.")
  (destinations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GARequest-request>) ostream)
  "Serializes a message object of type '<GARequest-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'start))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'start))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'destinations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'destinations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GARequest-request>) istream)
  "Deserializes a message object of type '<GARequest-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'start) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'destinations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'destinations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GARequest-request>)))
  "Returns string type for a service object of type '<GARequest-request>"
  "robot_navigation/GARequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GARequest-request)))
  "Returns string type for a service object of type 'GARequest-request"
  "robot_navigation/GARequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GARequest-request>)))
  "Returns md5sum for a message object of type '<GARequest-request>"
  "51c6edeb2019aac92d28d0824470756f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GARequest-request)))
  "Returns md5sum for a message object of type 'GARequest-request"
  "51c6edeb2019aac92d28d0824470756f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GARequest-request>)))
  "Returns full string definition for message of type '<GARequest-request>"
  (cl:format cl:nil "# Request: An array of strings~%string start~%string[] destinations~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GARequest-request)))
  "Returns full string definition for message of type 'GARequest-request"
  (cl:format cl:nil "# Request: An array of strings~%string start~%string[] destinations~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GARequest-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'start))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'destinations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GARequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GARequest-request
    (cl:cons ':start (start msg))
    (cl:cons ':destinations (destinations msg))
))
;//! \htmlinclude GARequest-response.msg.html

(cl:defclass <GARequest-response> (roslisp-msg-protocol:ros-message)
  ((GA_result
    :reader GA_result
    :initarg :GA_result
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (Products
    :reader Products
    :initarg :Products
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (Products_indices
    :reader Products_indices
    :initarg :Products_indices
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass GARequest-response (<GARequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GARequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GARequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_navigation-srv:<GARequest-response> is deprecated: use robot_navigation-srv:GARequest-response instead.")))

(cl:ensure-generic-function 'GA_result-val :lambda-list '(m))
(cl:defmethod GA_result-val ((m <GARequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-srv:GA_result-val is deprecated.  Use robot_navigation-srv:GA_result instead.")
  (GA_result m))

(cl:ensure-generic-function 'Products-val :lambda-list '(m))
(cl:defmethod Products-val ((m <GARequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-srv:Products-val is deprecated.  Use robot_navigation-srv:Products instead.")
  (Products m))

(cl:ensure-generic-function 'Products_indices-val :lambda-list '(m))
(cl:defmethod Products_indices-val ((m <GARequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_navigation-srv:Products_indices-val is deprecated.  Use robot_navigation-srv:Products_indices instead.")
  (Products_indices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GARequest-response>) ostream)
  "Serializes a message object of type '<GARequest-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'GA_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'GA_result))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Products))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'Products))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Products_indices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'Products_indices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GARequest-response>) istream)
  "Deserializes a message object of type '<GARequest-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'GA_result) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'GA_result)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Products) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Products)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Products_indices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Products_indices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GARequest-response>)))
  "Returns string type for a service object of type '<GARequest-response>"
  "robot_navigation/GARequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GARequest-response)))
  "Returns string type for a service object of type 'GARequest-response"
  "robot_navigation/GARequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GARequest-response>)))
  "Returns md5sum for a message object of type '<GARequest-response>"
  "51c6edeb2019aac92d28d0824470756f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GARequest-response)))
  "Returns md5sum for a message object of type 'GARequest-response"
  "51c6edeb2019aac92d28d0824470756f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GARequest-response>)))
  "Returns full string definition for message of type '<GARequest-response>"
  (cl:format cl:nil "# Response: An array of strings~%string[] GA_result~%string[] Products~%int32[] Products_indices~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GARequest-response)))
  "Returns full string definition for message of type 'GARequest-response"
  (cl:format cl:nil "# Response: An array of strings~%string[] GA_result~%string[] Products~%int32[] Products_indices~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GARequest-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'GA_result) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Products) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Products_indices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GARequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GARequest-response
    (cl:cons ':GA_result (GA_result msg))
    (cl:cons ':Products (Products msg))
    (cl:cons ':Products_indices (Products_indices msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GARequest)))
  'GARequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GARequest)))
  'GARequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GARequest)))
  "Returns string type for a service object of type '<GARequest>"
  "robot_navigation/GARequest")