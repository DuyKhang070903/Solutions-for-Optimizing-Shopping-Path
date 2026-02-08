;; Auto-generated. Do not edit!


(when (boundp 'robot_navigation::GARequest)
  (if (not (find-package "ROBOT_NAVIGATION"))
    (make-package "ROBOT_NAVIGATION"))
  (shadow 'GARequest (find-package "ROBOT_NAVIGATION")))
(unless (find-package "ROBOT_NAVIGATION::GAREQUEST")
  (make-package "ROBOT_NAVIGATION::GAREQUEST"))
(unless (find-package "ROBOT_NAVIGATION::GAREQUESTREQUEST")
  (make-package "ROBOT_NAVIGATION::GAREQUESTREQUEST"))
(unless (find-package "ROBOT_NAVIGATION::GAREQUESTRESPONSE")
  (make-package "ROBOT_NAVIGATION::GAREQUESTRESPONSE"))

(in-package "ROS")





(defclass robot_navigation::GARequestRequest
  :super ros::object
  :slots (_start _destinations ))

(defmethod robot_navigation::GARequestRequest
  (:init
   (&key
    ((:start __start) "")
    ((:destinations __destinations) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _start (string __start))
   (setq _destinations __destinations)
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:destinations
   (&optional __destinations)
   (if __destinations (setq _destinations __destinations)) _destinations)
  (:serialization-length
   ()
   (+
    ;; string _start
    4 (length _start)
    ;; string[] _destinations
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _destinations)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _start
       (write-long (length _start) s) (princ _start s)
     ;; string[] _destinations
     (write-long (length _destinations) s)
     (dolist (elem _destinations)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _start
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _destinations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _destinations (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _destinations i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass robot_navigation::GARequestResponse
  :super ros::object
  :slots (_GA_result _Products _Products_indices ))

(defmethod robot_navigation::GARequestResponse
  (:init
   (&key
    ((:GA_result __GA_result) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:Products __Products) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:Products_indices __Products_indices) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _GA_result __GA_result)
   (setq _Products __Products)
   (setq _Products_indices __Products_indices)
   self)
  (:GA_result
   (&optional __GA_result)
   (if __GA_result (setq _GA_result __GA_result)) _GA_result)
  (:Products
   (&optional __Products)
   (if __Products (setq _Products __Products)) _Products)
  (:Products_indices
   (&optional __Products_indices)
   (if __Products_indices (setq _Products_indices __Products_indices)) _Products_indices)
  (:serialization-length
   ()
   (+
    ;; string[] _GA_result
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _GA_result)) 4
    ;; string[] _Products
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _Products)) 4
    ;; int32[] _Products_indices
    (* 4    (length _Products_indices)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _GA_result
     (write-long (length _GA_result) s)
     (dolist (elem _GA_result)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _Products
     (write-long (length _Products) s)
     (dolist (elem _Products)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _Products_indices
     (write-long (length _Products_indices) s)
     (dotimes (i (length _Products_indices))
       (write-long (elt _Products_indices i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _GA_result
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _GA_result (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _GA_result i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _Products
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Products (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _Products i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _Products_indices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Products_indices (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _Products_indices i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass robot_navigation::GARequest
  :super ros::object
  :slots ())

(setf (get robot_navigation::GARequest :md5sum-) "51c6edeb2019aac92d28d0824470756f")
(setf (get robot_navigation::GARequest :datatype-) "robot_navigation/GARequest")
(setf (get robot_navigation::GARequest :request) robot_navigation::GARequestRequest)
(setf (get robot_navigation::GARequest :response) robot_navigation::GARequestResponse)

(defmethod robot_navigation::GARequestRequest
  (:response () (instance robot_navigation::GARequestResponse :init)))

(setf (get robot_navigation::GARequestRequest :md5sum-) "51c6edeb2019aac92d28d0824470756f")
(setf (get robot_navigation::GARequestRequest :datatype-) "robot_navigation/GARequestRequest")
(setf (get robot_navigation::GARequestRequest :definition-)
      "# Request: An array of strings
string start
string[] destinations

---
# Response: An array of strings
string[] GA_result
string[] Products
int32[] Products_indices
")

(setf (get robot_navigation::GARequestResponse :md5sum-) "51c6edeb2019aac92d28d0824470756f")
(setf (get robot_navigation::GARequestResponse :datatype-) "robot_navigation/GARequestResponse")
(setf (get robot_navigation::GARequestResponse :definition-)
      "# Request: An array of strings
string start
string[] destinations

---
# Response: An array of strings
string[] GA_result
string[] Products
int32[] Products_indices
")



(provide :robot_navigation/GARequest "51c6edeb2019aac92d28d0824470756f")


