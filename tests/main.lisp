(defpackage nb2/tests/main
  (:use :cl
        :nb2
        :rove))
(in-package :nb2/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :nb2)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
