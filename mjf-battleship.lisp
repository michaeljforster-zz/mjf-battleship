;;;; mjf-battleship.lisp

(in-package #:mjf-battleship)

;;; "mjf-battleship" goes here. Hacks and glory await!

(defclass player ()
  ((shots-fired :initform 0 :accessor shots-fired)))

(defmethod fire ((object player) coordinate)
  (incf (shots-fired object))
  nil)
