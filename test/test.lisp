;;;; test.lisp

;;; The MIT License (MIT)
;;;
;;; Copyright (c) 2016 Michael J. Forster
;;;
;;; Permission is hereby granted, free of charge, to any person obtaining a copy
;;; of this software and associated documentation files (the "Software"), to deal
;;; in the Software without restriction, including without limitation the rights
;;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;;; copies of the Software, and to permit persons to whom the Software is
;;; furnished to do so, subject to the following conditions:
;;;
;;; The above copyright notice and this permission notice shall be included in all
;;; copies or substantial portions of the Software.
;;;
;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;;; SOFTWARE.

(in-package #:mjf-battleship-test)

(define-test test-player-has-not-fired-yet
  (:tag :player :01)
  (assert-equal 0 (shots-fired (make-instance 'player))))

(define-test test-player-can-fire-shot-at-coordinate
  (:tag :player :01)
  (let ((player (make-instance 'player)))
    (fire player '(A 6))
    (assert-equal 1 (shots-fired player))
    (fire player '(A 7))
    (assert-equal 2 (shots-fired player))))

(define-test test-player-cannot-fire-more-than-ten-shots
  (:tag :player :01)
  (let ((player (make-instance 'player)))
    (dotimes (i 10) (fire player `(B ,i)))
    (assert-equal 10 (shots-fired player))
    (assert-false (fire player '(C 7)))
    (assert-equal 10 (shots-fired player))))

(define-test test-ship-length-25-max-shots-5
  (:tag :ship :02)
  (let ((ship (make-instance 'ship :length 2 :max-shots 5)))
    (assert-equal 2 (ship-length ship))
    (assert-equal 5 (max-shots ship))
    (assert-equal 0 (hits ship))))
