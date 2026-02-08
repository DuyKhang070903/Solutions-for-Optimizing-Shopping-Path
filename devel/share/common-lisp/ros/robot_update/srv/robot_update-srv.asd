
(cl:in-package :asdf)

(defsystem "robot_update-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "updateFWSignal" :depends-on ("_package_updateFWSignal"))
    (:file "_package_updateFWSignal" :depends-on ("_package"))
  ))