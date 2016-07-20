; Auto-generated. Do not edit!


(cl:in-package ros_arduino_base-srv)


;//! \htmlinclude UpdateGains-request.msg.html

(cl:defclass <UpdateGains-request> (roslisp-msg-protocol:ros-message)
  ((gains
    :reader gains
    :initarg :gains
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass UpdateGains-request (<UpdateGains-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateGains-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateGains-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_arduino_base-srv:<UpdateGains-request> is deprecated: use ros_arduino_base-srv:UpdateGains-request instead.")))

(cl:ensure-generic-function 'gains-val :lambda-list '(m))
(cl:defmethod gains-val ((m <UpdateGains-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_arduino_base-srv:gains-val is deprecated.  Use ros_arduino_base-srv:gains instead.")
  (gains m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateGains-request>) ostream)
  "Serializes a message object of type '<UpdateGains-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'gains))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateGains-request>) istream)
  "Deserializes a message object of type '<UpdateGains-request>"
  (cl:setf (cl:slot-value msg 'gains) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'gains)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateGains-request>)))
  "Returns string type for a service object of type '<UpdateGains-request>"
  "ros_arduino_base/UpdateGainsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateGains-request)))
  "Returns string type for a service object of type 'UpdateGains-request"
  "ros_arduino_base/UpdateGainsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateGains-request>)))
  "Returns md5sum for a message object of type '<UpdateGains-request>"
  "8228f4ec4b23c46622122a1e302577ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateGains-request)))
  "Returns md5sum for a message object of type 'UpdateGains-request"
  "8228f4ec4b23c46622122a1e302577ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateGains-request>)))
  "Returns full string definition for message of type '<UpdateGains-request>"
  (cl:format cl:nil "float32[3] gains~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateGains-request)))
  "Returns full string definition for message of type 'UpdateGains-request"
  (cl:format cl:nil "float32[3] gains~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateGains-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gains) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateGains-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateGains-request
    (cl:cons ':gains (gains msg))
))
;//! \htmlinclude UpdateGains-response.msg.html

(cl:defclass <UpdateGains-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UpdateGains-response (<UpdateGains-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateGains-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateGains-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_arduino_base-srv:<UpdateGains-response> is deprecated: use ros_arduino_base-srv:UpdateGains-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateGains-response>) ostream)
  "Serializes a message object of type '<UpdateGains-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateGains-response>) istream)
  "Deserializes a message object of type '<UpdateGains-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateGains-response>)))
  "Returns string type for a service object of type '<UpdateGains-response>"
  "ros_arduino_base/UpdateGainsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateGains-response)))
  "Returns string type for a service object of type 'UpdateGains-response"
  "ros_arduino_base/UpdateGainsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateGains-response>)))
  "Returns md5sum for a message object of type '<UpdateGains-response>"
  "8228f4ec4b23c46622122a1e302577ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateGains-response)))
  "Returns md5sum for a message object of type 'UpdateGains-response"
  "8228f4ec4b23c46622122a1e302577ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateGains-response>)))
  "Returns full string definition for message of type '<UpdateGains-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateGains-response)))
  "Returns full string definition for message of type 'UpdateGains-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateGains-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateGains-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateGains-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateGains)))
  'UpdateGains-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateGains)))
  'UpdateGains-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateGains)))
  "Returns string type for a service object of type '<UpdateGains>"
  "ros_arduino_base/UpdateGains")