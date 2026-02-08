
(cl:in-package :asdf)

(defsystem "robot_navigation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GARequest" :depends-on ("_package_GARequest"))
    (:file "_package_GARequest" :depends-on ("_package"))
    (:file "ReplanPath" :depends-on ("_package_ReplanPath"))
    (:file "_package_ReplanPath" :depends-on ("_package"))
  ))