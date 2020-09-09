;; Auto-generated. Do not edit!


(when (boundp 'laser_tag::TagActionObs)
  (if (not (find-package "LASER_TAG"))
    (make-package "LASER_TAG"))
  (shadow 'TagActionObs (find-package "LASER_TAG")))
(unless (find-package "LASER_TAG::TAGACTIONOBS")
  (make-package "LASER_TAG::TAGACTIONOBS"))
(unless (find-package "LASER_TAG::TAGACTIONOBSREQUEST")
  (make-package "LASER_TAG::TAGACTIONOBSREQUEST"))
(unless (find-package "LASER_TAG::TAGACTIONOBSRESPONSE")
  (make-package "LASER_TAG::TAGACTIONOBSRESPONSE"))

(in-package "ROS")





(defclass laser_tag::TagActionObsRequest
  :super ros::object
  :slots (_action ))

(defmethod laser_tag::TagActionObsRequest
  (:init
   (&key
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _action (round __action))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; int32 _action
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _action
       (write-long _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass laser_tag::TagActionObsResponse
  :super ros::object
  :slots (_observations _tag_success ))

(defmethod laser_tag::TagActionObsResponse
  (:init
   (&key
    ((:observations __observations) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tag_success __tag_success) nil)
    )
   (send-super :init)
   (setq _observations __observations)
   (setq _tag_success __tag_success)
   self)
  (:observations
   (&optional __observations)
   (if __observations (setq _observations __observations)) _observations)
  (:tag_success
   (&optional __tag_success)
   (if __tag_success (setq _tag_success __tag_success)) _tag_success)
  (:serialization-length
   ()
   (+
    ;; int32[] _observations
    (* 4    (length _observations)) 4
    ;; bool _tag_success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _observations
     (write-long (length _observations) s)
     (dotimes (i (length _observations))
       (write-long (elt _observations i) s)
       )
     ;; bool _tag_success
       (if _tag_success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _observations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _observations (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _observations i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool _tag_success
     (setq _tag_success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass laser_tag::TagActionObs
  :super ros::object
  :slots ())

(setf (get laser_tag::TagActionObs :md5sum-) "9cc4003dacca40d6dbafb218ad5c59fe")
(setf (get laser_tag::TagActionObs :datatype-) "laser_tag/TagActionObs")
(setf (get laser_tag::TagActionObs :request) laser_tag::TagActionObsRequest)
(setf (get laser_tag::TagActionObs :response) laser_tag::TagActionObsResponse)

(defmethod laser_tag::TagActionObsRequest
  (:response () (instance laser_tag::TagActionObsResponse :init)))

(setf (get laser_tag::TagActionObsRequest :md5sum-) "9cc4003dacca40d6dbafb218ad5c59fe")
(setf (get laser_tag::TagActionObsRequest :datatype-) "laser_tag/TagActionObsRequest")
(setf (get laser_tag::TagActionObsRequest :definition-)
      "# 0 - NORTH     
# 1 - EAST     
# 2 - SOUTH    
# 3 - WEST     
# 4 - TAG

int32 action
---
int32[] observations 
bool tag_success

")

(setf (get laser_tag::TagActionObsResponse :md5sum-) "9cc4003dacca40d6dbafb218ad5c59fe")
(setf (get laser_tag::TagActionObsResponse :datatype-) "laser_tag/TagActionObsResponse")
(setf (get laser_tag::TagActionObsResponse :definition-)
      "# 0 - NORTH     
# 1 - EAST     
# 2 - SOUTH    
# 3 - WEST     
# 4 - TAG

int32 action
---
int32[] observations 
bool tag_success

")



(provide :laser_tag/TagActionObs "9cc4003dacca40d6dbafb218ad5c59fe")


