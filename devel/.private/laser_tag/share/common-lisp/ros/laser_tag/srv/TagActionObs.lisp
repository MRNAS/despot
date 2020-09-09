; Auto-generated. Do not edit!


(cl:in-package laser_tag-srv)


;//! \htmlinclude TagActionObs-request.msg.html

(cl:defclass <TagActionObs-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0))
)

(cl:defclass TagActionObs-request (<TagActionObs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TagActionObs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TagActionObs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_tag-srv:<TagActionObs-request> is deprecated: use laser_tag-srv:TagActionObs-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <TagActionObs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_tag-srv:action-val is deprecated.  Use laser_tag-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TagActionObs-request>) ostream)
  "Serializes a message object of type '<TagActionObs-request>"
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TagActionObs-request>) istream)
  "Deserializes a message object of type '<TagActionObs-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TagActionObs-request>)))
  "Returns string type for a service object of type '<TagActionObs-request>"
  "laser_tag/TagActionObsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TagActionObs-request)))
  "Returns string type for a service object of type 'TagActionObs-request"
  "laser_tag/TagActionObsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TagActionObs-request>)))
  "Returns md5sum for a message object of type '<TagActionObs-request>"
  "9cc4003dacca40d6dbafb218ad5c59fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TagActionObs-request)))
  "Returns md5sum for a message object of type 'TagActionObs-request"
  "9cc4003dacca40d6dbafb218ad5c59fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TagActionObs-request>)))
  "Returns full string definition for message of type '<TagActionObs-request>"
  (cl:format cl:nil "# 0 - NORTH     ~%# 1 - EAST     ~%# 2 - SOUTH    ~%# 3 - WEST     ~%# 4 - TAG~%~%int32 action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TagActionObs-request)))
  "Returns full string definition for message of type 'TagActionObs-request"
  (cl:format cl:nil "# 0 - NORTH     ~%# 1 - EAST     ~%# 2 - SOUTH    ~%# 3 - WEST     ~%# 4 - TAG~%~%int32 action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TagActionObs-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TagActionObs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TagActionObs-request
    (cl:cons ':action (action msg))
))
;//! \htmlinclude TagActionObs-response.msg.html

(cl:defclass <TagActionObs-response> (roslisp-msg-protocol:ros-message)
  ((observations
    :reader observations
    :initarg :observations
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (tag_success
    :reader tag_success
    :initarg :tag_success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TagActionObs-response (<TagActionObs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TagActionObs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TagActionObs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_tag-srv:<TagActionObs-response> is deprecated: use laser_tag-srv:TagActionObs-response instead.")))

(cl:ensure-generic-function 'observations-val :lambda-list '(m))
(cl:defmethod observations-val ((m <TagActionObs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_tag-srv:observations-val is deprecated.  Use laser_tag-srv:observations instead.")
  (observations m))

(cl:ensure-generic-function 'tag_success-val :lambda-list '(m))
(cl:defmethod tag_success-val ((m <TagActionObs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_tag-srv:tag_success-val is deprecated.  Use laser_tag-srv:tag_success instead.")
  (tag_success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TagActionObs-response>) ostream)
  "Serializes a message object of type '<TagActionObs-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'observations))))
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
   (cl:slot-value msg 'observations))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tag_success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TagActionObs-response>) istream)
  "Deserializes a message object of type '<TagActionObs-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'observations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'observations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:setf (cl:slot-value msg 'tag_success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TagActionObs-response>)))
  "Returns string type for a service object of type '<TagActionObs-response>"
  "laser_tag/TagActionObsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TagActionObs-response)))
  "Returns string type for a service object of type 'TagActionObs-response"
  "laser_tag/TagActionObsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TagActionObs-response>)))
  "Returns md5sum for a message object of type '<TagActionObs-response>"
  "9cc4003dacca40d6dbafb218ad5c59fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TagActionObs-response)))
  "Returns md5sum for a message object of type 'TagActionObs-response"
  "9cc4003dacca40d6dbafb218ad5c59fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TagActionObs-response>)))
  "Returns full string definition for message of type '<TagActionObs-response>"
  (cl:format cl:nil "int32[] observations ~%bool tag_success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TagActionObs-response)))
  "Returns full string definition for message of type 'TagActionObs-response"
  (cl:format cl:nil "int32[] observations ~%bool tag_success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TagActionObs-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'observations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TagActionObs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TagActionObs-response
    (cl:cons ':observations (observations msg))
    (cl:cons ':tag_success (tag_success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TagActionObs)))
  'TagActionObs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TagActionObs)))
  'TagActionObs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TagActionObs)))
  "Returns string type for a service object of type '<TagActionObs>"
  "laser_tag/TagActionObs")