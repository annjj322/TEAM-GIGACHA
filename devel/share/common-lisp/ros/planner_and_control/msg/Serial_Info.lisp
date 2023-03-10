; Auto-generated. Do not edit!


(cl:in-package planner_and_control-msg)


;//! \htmlinclude Serial_Info.msg.html

(cl:defclass <Serial_Info> (roslisp-msg-protocol:ros-message)
  ((auto_manual
    :reader auto_manual
    :initarg :auto_manual
    :type cl:fixnum
    :initform 0)
   (emergency_stop
    :reader emergency_stop
    :initarg :emergency_stop
    :type cl:fixnum
    :initform 0)
   (gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (steer
    :reader steer
    :initarg :steer
    :type cl:float
    :initform 0.0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:integer
    :initform 0)
   (encoder
    :reader encoder
    :initarg :encoder
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Serial_Info (<Serial_Info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Serial_Info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Serial_Info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_and_control-msg:<Serial_Info> is deprecated: use planner_and_control-msg:Serial_Info instead.")))

(cl:ensure-generic-function 'auto_manual-val :lambda-list '(m))
(cl:defmethod auto_manual-val ((m <Serial_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_and_control-msg:auto_manual-val is deprecated.  Use planner_and_control-msg:auto_manual instead.")
  (auto_manual m))

(cl:ensure-generic-function 'emergency_stop-val :lambda-list '(m))
(cl:defmethod emergency_stop-val ((m <Serial_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_and_control-msg:emergency_stop-val is deprecated.  Use planner_and_control-msg:emergency_stop instead.")
  (emergency_stop m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <Serial_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_and_control-msg:gear-val is deprecated.  Use planner_and_control-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Serial_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_and_control-msg:speed-val is deprecated.  Use planner_and_control-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'steer-val :lambda-list '(m))
(cl:defmethod steer-val ((m <Serial_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_and_control-msg:steer-val is deprecated.  Use planner_and_control-msg:steer instead.")
  (steer m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <Serial_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_and_control-msg:brake-val is deprecated.  Use planner_and_control-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'encoder-val :lambda-list '(m))
(cl:defmethod encoder-val ((m <Serial_Info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_and_control-msg:encoder-val is deprecated.  Use planner_and_control-msg:encoder instead.")
  (encoder m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Serial_Info>) ostream)
  "Serializes a message object of type '<Serial_Info>"
  (cl:let* ((signed (cl:slot-value msg 'auto_manual)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'emergency_stop)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'brake)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'encoder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'encoder))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Serial_Info>) istream)
  "Deserializes a message object of type '<Serial_Info>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'auto_manual) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'emergency_stop) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brake) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'encoder) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'encoder)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Serial_Info>)))
  "Returns string type for a message object of type '<Serial_Info>"
  "planner_and_control/Serial_Info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Serial_Info)))
  "Returns string type for a message object of type 'Serial_Info"
  "planner_and_control/Serial_Info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Serial_Info>)))
  "Returns md5sum for a message object of type '<Serial_Info>"
  "288e1038c233a85b428a641389cf9e85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Serial_Info)))
  "Returns md5sum for a message object of type 'Serial_Info"
  "288e1038c233a85b428a641389cf9e85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Serial_Info>)))
  "Returns full string definition for message of type '<Serial_Info>"
  (cl:format cl:nil "int16 auto_manual~%int16 emergency_stop~%int16 gear~%float32 speed~%float32 steer~%int32 brake~%float64[] encoder~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Serial_Info)))
  "Returns full string definition for message of type 'Serial_Info"
  (cl:format cl:nil "int16 auto_manual~%int16 emergency_stop~%int16 gear~%float32 speed~%float32 steer~%int32 brake~%float64[] encoder~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Serial_Info>))
  (cl:+ 0
     2
     2
     2
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'encoder) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Serial_Info>))
  "Converts a ROS message object to a list"
  (cl:list 'Serial_Info
    (cl:cons ':auto_manual (auto_manual msg))
    (cl:cons ':emergency_stop (emergency_stop msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':steer (steer msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':encoder (encoder msg))
))
