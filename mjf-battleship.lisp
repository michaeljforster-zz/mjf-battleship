;;;; mjf-battleship.lisp

(in-package #:mjf-battleship)

;;; "mjf-battleship" goes here. Hacks and glory await!

(defparameter *player-max-shots* 10)

(defclass player ()
  ((shots-fired :initform 0 :accessor shots-fired)))

(defmethod fire ((object player) coordinate)
  (when (< (shots-fired object) *player-max-shots*)
    (incf (shots-fired object)))
  nil)

(defclass ship ()
  ((length :initarg :length :reader ship-length)
   (max-shots :initarg :max-shots :reader max-shots)
   (hits :initform 0 :accessor hits)))

