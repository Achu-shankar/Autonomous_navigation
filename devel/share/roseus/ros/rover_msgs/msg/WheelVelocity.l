;; Auto-generated. Do not edit!


(when (boundp 'rover_msgs::WheelVelocity)
  (if (not (find-package "ROVER_MSGS"))
    (make-package "ROVER_MSGS"))
  (shadow 'WheelVelocity (find-package "ROVER_MSGS")))
(unless (find-package "ROVER_MSGS::WHEELVELOCITY")
  (make-package "ROVER_MSGS::WHEELVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude WheelVelocity.msg.html


(defclass rover_msgs::WheelVelocity
  :super ros::object
  :slots (_left _right _reset_flag ))

(defmethod rover_msgs::WheelVelocity
  (:init
   (&key
    ((:left __left) 0.0)
    ((:right __right) 0.0)
    ((:reset_flag __reset_flag) 0)
    )
   (send-super :init)
   (setq _left (float __left))
   (setq _right (float __right))
   (setq _reset_flag (round __reset_flag))
   self)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:reset_flag
   (&optional __reset_flag)
   (if __reset_flag (setq _reset_flag __reset_flag)) _reset_flag)
  (:serialization-length
   ()
   (+
    ;; float64 _left
    8
    ;; float64 _right
    8
    ;; int16 _reset_flag
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _left
       (sys::poke _left (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right
       (sys::poke _right (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _reset_flag
       (write-word _reset_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _left
     (setq _left (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right
     (setq _right (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _reset_flag
     (setq _reset_flag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rover_msgs::WheelVelocity :md5sum-) "22c56d70a0f2060151657bd9cd98512f")
(setf (get rover_msgs::WheelVelocity :datatype-) "rover_msgs/WheelVelocity")
(setf (get rover_msgs::WheelVelocity :definition-)
      "float64 left
float64 right
int16 reset_flag


")



(provide :rover_msgs/WheelVelocity "22c56d70a0f2060151657bd9cd98512f")


