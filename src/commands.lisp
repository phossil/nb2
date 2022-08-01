(in-package :nb2)

(defparameter *commands* (make-hash-table :test #'equal))

(defun split (string &aux (last 0))
  "Splits a string at whitespace"
  (append (loop :for e :across string
                :counting e :into c
                :if (member e '(#\space #\newline #\tab))
                  :collect (prog1 (subseq string last (1- c))
                             (setf last c)))
          (list (subseq string last))))

(defun dispatch-commands (message)
  "processes the command and looks it up in *commands*"
  (let ((no-mention (string-trim " " (remove-mention (me) (lc:content message)))))
    (destructuring-bind (cmd &rest args) (split no-mention)
      (apply (gethash (string-downcase cmd) *commands*) message args))))

(defmacro defcommand (command args &body body)
  "Constructs and registers a bot-command in *commands*"
  `(setf (gethash ,(string-downcase (string command)) *commands*)
         (lambda ,args ,@body)))

(defcommand ping (msg)
  (reply msg
         (let ((now (get-internal-real-time))
               (then (get-internal-real-time)))
           (format nil "Message took: ~a ms" (- then now)))))

(defcommand say (msg &rest words)
  (reply msg (format nil "~{~a~^ ~}" words)))

(defcommand uptime (msg)
  (reply msg (uptime)))

(defcommand ball (msg)
  (reply msg (eightball)))

(defcommand bop (msg)
  (reply msg (bop)))

(defcommand gif (msg)
  (reply msg (gif)))

(defcommand goose (msg)
  (reply msg (goose)))

(defcommand hug (msg)
  (reply msg (hug)))

(defcommand image (msg)
  (reply msg (image)))

(defcommand meme (msg)
  (reply msg (meme)))

(defcommand pat (msg)
  (reply msg (pat)))

(defcommand quote (msg)
  (reply msg (lain-quote)))

(defcommand site (msg)
  (reply msg (site)))

(defcommand slap (msg)
  (reply msg (slap)))

(defcommand song (msg)
  (reply msg (song)))

(defcommand bye (msg)
  (declare (ignore msg))
  (disconnect *client*))
