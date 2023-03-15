(defsystem "nb2"
  :version "0.1.0"
  :author "phossil"
  :license ""
  :depends-on ("lispcord"
               "dotenv")
  :components ((:module "src"
                :components
                ((:file "packages")
                 (:file "main")
                 (:file "commands")
                 (:file "uptime")
                 (:file "eightball")
                 (:file "bop")
                 (:file "gif")
                 (:file "goose")
                 (:file "hug")
                 (:file "image")
                 (:file "meme")
                 (:file "pat")
                 (:file "quote")
                 (:file "site")
                 (:file "slap")
                 (:file "song"))))
  :description ""
  ;; and here we define how build the image
  ;entry-point "nb2:main"
  ;; back to normal asdf stuffs
  :in-order-to ((test-op (test-op "nb2/tests"))))

(defsystem "nb2/tests"
  :author ""
  :license ""
  :depends-on ("nb2"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for nb2"
  :perform (test-op (op c) (symbol-call :rove :run c)))
