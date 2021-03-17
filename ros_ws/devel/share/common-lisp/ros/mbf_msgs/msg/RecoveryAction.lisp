; Auto-generated. Do not edit!


(cl:in-package mbf_msgs-msg)


;//! \htmlinclude RecoveryAction.msg.html

(cl:defclass <RecoveryAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type mbf_msgs-msg:RecoveryActionGoal
    :initform (cl:make-instance 'mbf_msgs-msg:RecoveryActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type mbf_msgs-msg:RecoveryActionResult
    :initform (cl:make-instance 'mbf_msgs-msg:RecoveryActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type mbf_msgs-msg:RecoveryActionFeedback
    :initform (cl:make-instance 'mbf_msgs-msg:RecoveryActionFeedback)))
)

(cl:defclass RecoveryAction (<RecoveryAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecoveryAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecoveryAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mbf_msgs-msg:<RecoveryAction> is deprecated: use mbf_msgs-msg:RecoveryAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <RecoveryAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbf_msgs-msg:action_goal-val is deprecated.  Use mbf_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <RecoveryAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbf_msgs-msg:action_result-val is deprecated.  Use mbf_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <RecoveryAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbf_msgs-msg:action_feedback-val is deprecated.  Use mbf_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecoveryAction>) ostream)
  "Serializes a message object of type '<RecoveryAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecoveryAction>) istream)
  "Deserializes a message object of type '<RecoveryAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecoveryAction>)))
  "Returns string type for a message object of type '<RecoveryAction>"
  "mbf_msgs/RecoveryAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecoveryAction)))
  "Returns string type for a message object of type 'RecoveryAction"
  "mbf_msgs/RecoveryAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecoveryAction>)))
  "Returns md5sum for a message object of type '<RecoveryAction>"
  "b35ffa9c1783e3d612414d87fbc80598")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecoveryAction)))
  "Returns md5sum for a message object of type 'RecoveryAction"
  "b35ffa9c1783e3d612414d87fbc80598")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecoveryAction>)))
  "Returns full string definition for message of type '<RecoveryAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%RecoveryActionGoal action_goal~%RecoveryActionResult action_result~%RecoveryActionFeedback action_feedback~%~%================================================================================~%MSG: mbf_msgs/RecoveryActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%RecoveryGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: mbf_msgs/RecoveryGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Run one of the recovery behavior listed on recovery_behaviors parameter~%~%string behavior~%~%# use different slots for concurrency~%uint8 concurrency_slot~%~%~%================================================================================~%MSG: mbf_msgs/RecoveryActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%RecoveryResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: mbf_msgs/RecoveryResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# Predefined success codes:~%uint8 SUCCESS         = 0~%~%# Possible server codes:~%uint8 FAILURE         = 150~%uint8 CANCELED        = 151~%uint8 PAT_EXCEEDED    = 152~%uint8 TF_ERROR        = 153~%uint8 NOT_INITIALIZED = 154~%uint8 INVALID_PLUGIN  = 155~%uint8 INTERNAL_ERROR  = 156~%uint8 STOPPED         = 157  # The recovery behaviour execution has been stopped rigorously.~%uint8 IMPASSABLE      = 158  # Further execution would lead to a collision~%~%# 171..199 are reserved as plugin specific errors~%~%uint32 outcome~%string message~%string used_plugin~%~%~%================================================================================~%MSG: mbf_msgs/RecoveryActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%RecoveryFeedback feedback~%~%================================================================================~%MSG: mbf_msgs/RecoveryFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecoveryAction)))
  "Returns full string definition for message of type 'RecoveryAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%RecoveryActionGoal action_goal~%RecoveryActionResult action_result~%RecoveryActionFeedback action_feedback~%~%================================================================================~%MSG: mbf_msgs/RecoveryActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%RecoveryGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: mbf_msgs/RecoveryGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Run one of the recovery behavior listed on recovery_behaviors parameter~%~%string behavior~%~%# use different slots for concurrency~%uint8 concurrency_slot~%~%~%================================================================================~%MSG: mbf_msgs/RecoveryActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%RecoveryResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: mbf_msgs/RecoveryResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# Predefined success codes:~%uint8 SUCCESS         = 0~%~%# Possible server codes:~%uint8 FAILURE         = 150~%uint8 CANCELED        = 151~%uint8 PAT_EXCEEDED    = 152~%uint8 TF_ERROR        = 153~%uint8 NOT_INITIALIZED = 154~%uint8 INVALID_PLUGIN  = 155~%uint8 INTERNAL_ERROR  = 156~%uint8 STOPPED         = 157  # The recovery behaviour execution has been stopped rigorously.~%uint8 IMPASSABLE      = 158  # Further execution would lead to a collision~%~%# 171..199 are reserved as plugin specific errors~%~%uint32 outcome~%string message~%string used_plugin~%~%~%================================================================================~%MSG: mbf_msgs/RecoveryActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%RecoveryFeedback feedback~%~%================================================================================~%MSG: mbf_msgs/RecoveryFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecoveryAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecoveryAction>))
  "Converts a ROS message object to a list"
  (cl:list 'RecoveryAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
