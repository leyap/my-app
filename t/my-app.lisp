(in-package :cl-user)
(defpackage my-app-test
  (:use :cl :fiveam))
(in-package :my-app-test)

(def-suite tests
  :description "my-app tests.")
(in-suite tests)

(test simple-test
  (is
   (equal 1 1))
  (is-true
   (and t t)))

(run! 'tests)
