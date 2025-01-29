(in-package :cl-user)

(defpackage nb2
  (:use :cl :lispcord :dotenv :cffi)
  (:export :main
           :main-2
           :config))
