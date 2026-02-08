;; Auto-generated. Do not edit!


(when (boundp 'robot_update::updateFWSignal)
  (if (not (find-package "ROBOT_UPDATE"))
    (make-package "ROBOT_UPDATE"))
  (shadow 'updateFWSignal (find-package "ROBOT_UPDATE")))
(unless (find-package "ROBOT_UPDATE::UPDATEFWSIGNAL")
  (make-package "ROBOT_UPDATE::UPDATEFWSIGNAL"))
(unless (find-package "ROBOT_UPDATE::UPDATEFWSIGNALREQUEST")
  (make-package "ROBOT_UPDATE::UPDATEFWSIGNALREQUEST"))
(unless (find-package "ROBOT_UPDATE::UPDATEFWSIGNALRESPONSE")
  (make-package "ROBOT_UPDATE::UPDATEFWSIGNALRESPONSE"))

(in-package "ROS")





(defclass robot_update::updateFWSignalRequest
  :super ros::object
  :slots (_FW_name ))

(defmethod robot_update::updateFWSignalRequest
  (:init
   (&key
    ((:FW_name __FW_name) "")
    )
   (send-super :init)
   (setq _FW_name (string __FW_name))
   self)
  (:FW_name
   (&optional __FW_name)
   (if __FW_name (setq _FW_name __FW_name)) _FW_name)
  (:serialization-length
   ()
   (+
    ;; string _FW_name
    4 (length _FW_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _FW_name
       (write-long (length _FW_name) s) (princ _FW_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _FW_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _FW_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_update::updateFWSignalResponse
  :super ros::object
  :slots (_signalSuccess ))

(defmethod robot_update::updateFWSignalResponse
  (:init
   (&key
    ((:signalSuccess __signalSuccess) nil)
    )
   (send-super :init)
   (setq _signalSuccess __signalSuccess)
   self)
  (:signalSuccess
   (&optional (__signalSuccess :null))
   (if (not (eq __signalSuccess :null)) (setq _signalSuccess __signalSuccess)) _signalSuccess)
  (:serialization-length
   ()
   (+
    ;; bool _signalSuccess
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _signalSuccess
       (if _signalSuccess (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _signalSuccess
     (setq _signalSuccess (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_update::updateFWSignal
  :super ros::object
  :slots ())

(setf (get robot_update::updateFWSignal :md5sum-) "9c5eee2d22e1212d864abfe1f867776b")
(setf (get robot_update::updateFWSignal :datatype-) "robot_update/updateFWSignal")
(setf (get robot_update::updateFWSignal :request) robot_update::updateFWSignalRequest)
(setf (get robot_update::updateFWSignal :response) robot_update::updateFWSignalResponse)

(defmethod robot_update::updateFWSignalRequest
  (:response () (instance robot_update::updateFWSignalResponse :init)))

(setf (get robot_update::updateFWSignalRequest :md5sum-) "9c5eee2d22e1212d864abfe1f867776b")
(setf (get robot_update::updateFWSignalRequest :datatype-) "robot_update/updateFWSignalRequest")
(setf (get robot_update::updateFWSignalRequest :definition-)
      "# Request: FW name
string FW_name

---
# Response: Signal 
bool signalSuccess
")

(setf (get robot_update::updateFWSignalResponse :md5sum-) "9c5eee2d22e1212d864abfe1f867776b")
(setf (get robot_update::updateFWSignalResponse :datatype-) "robot_update/updateFWSignalResponse")
(setf (get robot_update::updateFWSignalResponse :definition-)
      "# Request: FW name
string FW_name

---
# Response: Signal 
bool signalSuccess
")



(provide :robot_update/updateFWSignal "9c5eee2d22e1212d864abfe1f867776b")


