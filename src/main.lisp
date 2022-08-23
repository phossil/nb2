(in-package :nb2)

(dotenv:load! '("nenv"))

(if (string= (dotenv:value "TOKEN") nil)
    (format t "TOKEN not defined in nenv file :/"))

(defbot *client* (dotenv:value "TOKEN"))

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
