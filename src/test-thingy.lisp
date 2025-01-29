(in-package :nb2)

(define-foreign-library concord
    (:unix (:or "libdiscord.a"))
    (t (:default "libdiscord")))

(use-foreign-library concord)

;; the main function must take at least one argument ,
;; one of which *must* be a discord bot token .

;(defvar token "")

;(defun main-2 (token)
;  ())