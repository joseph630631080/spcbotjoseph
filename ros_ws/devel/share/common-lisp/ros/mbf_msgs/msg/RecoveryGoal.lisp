; Auto-generated. Do not edit!


(cl:in-package mbf_msgs-msg)


;//! \htmlinclude RecoveryGoal.msg.html

(cl:defclass <RecoveryGoal> (roslisp-msg-protocol:ros-message)
  ((behavior
    :reader behavior
    :initarg :behavior
    :type cl:string
    :initform "")
   (concurrency_slot
    :reader concurrency_slot
    :initarg :concurrency_slot
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RecoveryGoal (<RecoveryGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecoveryGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecoveryGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mbf_msgs-msg:<RecoveryGoal> is deprecated: use mbf_msgs-msg:RecoveryGoal instead.")))

(cl:ensure-generic-function 'behavior-val :lambda-list '(m))
(cl:defmethod behavior-val ((m <RecoveryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbf_msgs-msg:behavior-val is deprecated.  Use mbf_msgs-msg:behavior instead.")
  (behavior m))

(cl:ensure-generic-function 'concurrency_slot-val :lambda-list '(m))
(cl:defmethod concurrency_slot-val ((m <RecoveryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbf_msgs-msg:concurrency_slot-val is deprecated.  Use mbf_msgs-msg:concurrency_slot instead.")
  (concurrency_slot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecoveryGoal>) ostream)
  "Serializes a message object of type '<RecoveryGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'behavior))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'behavior))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'concurrency_slot)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecoveryGoal>) istream)
  "Deserializes a message object of type '<RecoveryGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behavior) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'behavior) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'concurrency_slot)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecoveryGoal>)))
  "Returns string type for a message object of type '<RecoveryGoal>"
  "mbf_msgs/RecoveryGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecoveryGoal)))
  "Returns string type for a message object of type 'RecoveryGoal"
  "mbf_msgs/RecoveryGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecoveryGoal>)))
  "Returns md5sum for a message object of type '<RecoveryGoal>"
  "ce28884316a172b85e57b78a84014451")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecoveryGoal)))
  "Returns md5sum for a message object of type 'RecoveryGoal"
  "ce28884316a172b85e57b78a84014451")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecoveryGoal>)))
  "Returns full string definition for message of type '<RecoveryGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Run one of the recovery behavior listed on recovery_behaviors parameter~%~%string behavior~%~%# use different slots for concurrency~%uint8 concurrency_slot~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecoveryGoal)))
  "Returns full string definition for message of type 'RecoveryGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Run one of the recovery behavior listed on recovery_behaviors parameter~%~%string behavior~%~%# use different slots for concurrency~%uint8 concurrency_slot~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecoveryGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'behavior))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecoveryGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'RecoveryGoal
    (cl:cons ':behavior (behavior msg))
    (cl:cons ':concurrency_slot (concurrency_slot msg))
))
