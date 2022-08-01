(in-package :nb2)

(defvar eightball-list '("It is certain."
                         "As I see it yes."
                         "Ask again later."
                         "Better not tell you now."
                         "Cannot predict now."
                         "Concentrate and ask again."
                         "Don't count on it."
                         "It is decidedly so."
                         "Most likely."
                         "My reply is no."
                         "My sources say no."
                         "Outlook good."
                         "Outlook not so good."
                         "Reply hazy try again."
                         "Signs point to yes."
                         "Very doubtful."
                         "Without a doubt."
                         "Yes - definitely."
                         "Yes."
                         "You may rely on it."))

(defun eightball ()
  (format nil (nth (random (length eightball-list)) eightball-list)))
