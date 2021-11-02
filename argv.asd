;;;; argv.asd

(asdf:defsystem #:argv
  :description "Portable command line arguments argv"
  :author "Mark Karpov"
  :maintainer "Alejandro Gallo <aamsgallo@gmail.com>"
  :license  "MIT"
  :version "0.0.1"
  :serial t
  :components ((:file "package")
               (:file "argv")))
