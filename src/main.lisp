(in-package :nb2)

;; (setf (v:repl-level) :info)

;; (.env:load-env (merge-pathnames "./nenv"))

;(defvar *name*
;  (let ((env (.env:read-env (merge-pathnames "./nenv"))))
;    (is (gethash "TOKEN" env) "")
;    (is (gethash "PREFIX" env) ";")))

(defbot *client* "")

(defun message-create (msg)
  (cond ((lc:botp (lc:author msg)) nil)
  ((not (commandp msg)) nil)
  (t (dispatch-commands msg))))

;;set up a handler waiting for "message_create" events
(add-event-handler :on-message-create #'message-create)

(add-event-handler :on-ready
       (lambda (ready)
         (format t "User: ~a~%Session: ~a~%Connected!"
           (lc:name (lc:user ready))
           (lc:session-id ready))))

(defun config () ())

(defun main ()
  (connect *client*))
