(defsystem "nb2"
  :version "0.1.0"
  :author "phossil"
  :license ""
  :depends-on ("lispcord"
               "dotenv"
               "cffi")
  :components ((:module "src"
                :components
                ((:file "packages")
                 (:file "test-thingy")
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
  ;; the function to use if image is built as an executable
  :entry-point "nb2:main"
  ;; "nb2" is a dependency of the tests
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
