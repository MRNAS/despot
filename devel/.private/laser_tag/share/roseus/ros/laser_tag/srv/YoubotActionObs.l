;; Auto-generated. Do not edit!


(when (boundp 'laser_tag::YoubotActionObs)
  (if (not (find-package "LASER_TAG"))
    (make-package "LASER_TAG"))
  (shadow 'YoubotActionObs (find-package "LASER_TAG")))
(unless (find-package "LASER_TAG::YOUBOTACTIONOBS")
  (make-package "LASER_TAG::YOUBOTACTIONOBS"))
(unless (find-package "LASER_TAG::YOUBOTACTIONOBSREQUEST")
  (make-package "LASER_TAG::YOUBOTACTIONOBSREQUEST"))
(unless (find-package "LASER_TAG::YOUBOTACTIONOBSRESPONSE")
  (make-package "LASER_TAG::YOUBOTACTIONOBSRESPONSE"))

(in-package "ROS")





(defclass laser_tag::YoubotActionObsRequest
  :super ros::object
  :slots (_direction ))

(defmethod laser_tag::YoubotActionObsRequest
  (:init
   (&key
    ((:direction __direction) "")
    )
   (send-super :init)
   (setq _direction (string __direction))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; string _direction
    4 (length _direction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass laser_tag::YoubotActionObsResponse
  :super ros::object
  :slots (_laser_readings ))

(defmethod laser_tag::YoubotActionObsResponse
  (:init
   (&key
    ((:laser_readings __laser_readings) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _laser_readings __laser_readings)
   self)
  (:laser_readings
   (&optional __laser_readings)
   (if __laser_readings (setq _laser_readings __laser_readings)) _laser_readings)
  (:serialization-length
   ()
   (+
    ;; int32[] _laser_readings
    (* 4    (length _laser_readings)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _laser_readings
     (write-long (length _laser_readings) s)
     (dotimes (i (length _laser_readings))
       (write-long (elt _laser_readings i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _laser_readings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _laser_readings (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _laser_readings i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass laser_tag::YoubotActionObs
  :super ros::object
  :slots ())

(setf (get laser_tag::YoubotActionObs :md5sum-) "a51480b466976e5076b2241b78665302")
(setf (get laser_tag::YoubotActionObs :datatype-) "laser_tag/YoubotActionObs")
(setf (get laser_tag::YoubotActionObs :request) laser_tag::YoubotActionObsRequest)
(setf (get laser_tag::YoubotActionObs :response) laser_tag::YoubotActionObsResponse)

(defmethod laser_tag::YoubotActionObsRequest
  (:response () (instance laser_tag::YoubotActionObsResponse :init)))

(setf (get laser_tag::YoubotActionObsRequest :md5sum-) "a51480b466976e5076b2241b78665302")
(setf (get laser_tag::YoubotActionObsRequest :datatype-) "laser_tag/YoubotActionObsRequest")
(setf (get laser_tag::YoubotActionObsRequest :definition-)
      "# directions 
# North - NORTH     
# East  - EAST     
# South - SOUTH    
# West  - WEST     
# NE    - NORTHEAST
# SE    - SOUTHEAST
# SW    - SOUTHWEST
# NW    - NORTHWEST

string direction
---
int32[] laser_readings

")

(setf (get laser_tag::YoubotActionObsResponse :md5sum-) "a51480b466976e5076b2241b78665302")
(setf (get laser_tag::YoubotActionObsResponse :datatype-) "laser_tag/YoubotActionObsResponse")
(setf (get laser_tag::YoubotActionObsResponse :definition-)
      "# directions 
# North - NORTH     
# East  - EAST     
# South - SOUTH    
# West  - WEST     
# NE    - NORTHEAST
# SE    - SOUTHEAST
# SW    - SOUTHWEST
# NW    - NORTHWEST

string direction
---
int32[] laser_readings

")



(provide :laser_tag/YoubotActionObs "a51480b466976e5076b2241b78665302")


