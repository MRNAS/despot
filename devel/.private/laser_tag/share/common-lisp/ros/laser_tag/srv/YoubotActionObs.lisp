; Auto-generated. Do not edit!


(cl:in-package laser_tag-srv)


;//! \htmlinclude YoubotActionObs-request.msg.html

(cl:defclass <YoubotActionObs-request> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform ""))
)

(cl:defclass YoubotActionObs-request (<YoubotActionObs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YoubotActionObs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YoubotActionObs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_tag-srv:<YoubotActionObs-request> is deprecated: use laser_tag-srv:YoubotActionObs-request instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <YoubotActionObs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_tag-srv:direction-val is deprecated.  Use laser_tag-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YoubotActionObs-request>) ostream)
  "Serializes a message object of type '<YoubotActionObs-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YoubotActionObs-request>) istream)
  "Deserializes a message object of type '<YoubotActionObs-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YoubotActionObs-request>)))
  "Returns string type for a service object of type '<YoubotActionObs-request>"
  "laser_tag/YoubotActionObsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoubotActionObs-request)))
  "Returns string type for a service object of type 'YoubotActionObs-request"
  "laser_tag/YoubotActionObsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YoubotActionObs-request>)))
  "Returns md5sum for a message object of type '<YoubotActionObs-request>"
  "a51480b466976e5076b2241b78665302")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YoubotActionObs-request)))
  "Returns md5sum for a message object of type 'YoubotActionObs-request"
  "a51480b466976e5076b2241b78665302")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YoubotActionObs-request>)))
  "Returns full string definition for message of type '<YoubotActionObs-request>"
  (cl:format cl:nil "# directions ~%# North - NORTH     ~%# East  - EAST     ~%# South - SOUTH    ~%# West  - WEST     ~%# NE    - NORTHEAST~%# SE    - SOUTHEAST~%# SW    - SOUTHWEST~%# NW    - NORTHWEST~%~%string direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YoubotActionObs-request)))
  "Returns full string definition for message of type 'YoubotActionObs-request"
  (cl:format cl:nil "# directions ~%# North - NORTH     ~%# East  - EAST     ~%# South - SOUTH    ~%# West  - WEST     ~%# NE    - NORTHEAST~%# SE    - SOUTHEAST~%# SW    - SOUTHWEST~%# NW    - NORTHWEST~%~%string direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YoubotActionObs-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YoubotActionObs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'YoubotActionObs-request
    (cl:cons ':direction (direction msg))
))
;//! \htmlinclude YoubotActionObs-response.msg.html

(cl:defclass <YoubotActionObs-response> (roslisp-msg-protocol:ros-message)
  ((laser_readings
    :reader laser_readings
    :initarg :laser_readings
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass YoubotActionObs-response (<YoubotActionObs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YoubotActionObs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YoubotActionObs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name laser_tag-srv:<YoubotActionObs-response> is deprecated: use laser_tag-srv:YoubotActionObs-response instead.")))

(cl:ensure-generic-function 'laser_readings-val :lambda-list '(m))
(cl:defmethod laser_readings-val ((m <YoubotActionObs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader laser_tag-srv:laser_readings-val is deprecated.  Use laser_tag-srv:laser_readings instead.")
  (laser_readings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YoubotActionObs-response>) ostream)
  "Serializes a message object of type '<YoubotActionObs-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'laser_readings))))
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
   (cl:slot-value msg 'laser_readings))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YoubotActionObs-response>) istream)
  "Deserializes a message object of type '<YoubotActionObs-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'laser_readings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'laser_readings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YoubotActionObs-response>)))
  "Returns string type for a service object of type '<YoubotActionObs-response>"
  "laser_tag/YoubotActionObsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoubotActionObs-response)))
  "Returns string type for a service object of type 'YoubotActionObs-response"
  "laser_tag/YoubotActionObsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YoubotActionObs-response>)))
  "Returns md5sum for a message object of type '<YoubotActionObs-response>"
  "a51480b466976e5076b2241b78665302")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YoubotActionObs-response)))
  "Returns md5sum for a message object of type 'YoubotActionObs-response"
  "a51480b466976e5076b2241b78665302")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YoubotActionObs-response>)))
  "Returns full string definition for message of type '<YoubotActionObs-response>"
  (cl:format cl:nil "int32[] laser_readings~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YoubotActionObs-response)))
  "Returns full string definition for message of type 'YoubotActionObs-response"
  (cl:format cl:nil "int32[] laser_readings~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YoubotActionObs-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'laser_readings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YoubotActionObs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'YoubotActionObs-response
    (cl:cons ':laser_readings (laser_readings msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'YoubotActionObs)))
  'YoubotActionObs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'YoubotActionObs)))
  'YoubotActionObs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoubotActionObs)))
  "Returns string type for a service object of type '<YoubotActionObs>"
  "laser_tag/YoubotActionObs")