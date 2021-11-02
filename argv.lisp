(in-package #:argv)

(defun argv ()
  "Return a list of program's arguments, including command used to execute
the program as first elements of the list. Portable across implementations."
  #+abcl      ext:*command-line-argument-list*
  #+allegro   (sys:command-line-arguments)
  #+:ccl      ccl:*command-line-argument-list*
  #+clisp     (cons *load-truename* ext:*args*)
  #+clozure   ccl:*command-line-argument-list*
  #+cmu       extensions:*command-line-words*
  #+ecl       (ext:command-args)
  #+gcl       si:*command-args*
  #+lispworks system:*line-arguments-list*
  #+sbcl      sb-ext:*posix-argv*)
