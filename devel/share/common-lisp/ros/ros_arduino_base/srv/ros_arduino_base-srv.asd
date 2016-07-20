
(cl:in-package :asdf)

(defsystem "ros_arduino_base-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "UpdateGains" :depends-on ("_package_UpdateGains"))
    (:file "_package_UpdateGains" :depends-on ("_package"))
  ))