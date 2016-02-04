;;;; mjf-battleship.lisp

(in-package #:mjf-battleship)

;;; "mjf-battleship" goes here. Hacks and glory await!

(defclass player ()
  ())

(defmethod shots-fired ((object player))
  0)
