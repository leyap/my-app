(in-package :cl-user)
(defpackage my-app
  (:use :cl :lucerne)
  (:export :app)
  (:documentation "Main my-app code."))
(in-package :my-app)
(annot:enable-annot-syntax)

;;; App

(defapp app
  :middlewares ((clack.middleware.static:<clack-middleware-static>
                 :root (asdf:system-relative-pathname :my-app #p"assets/")
                 :path "/static/")))

;;; Templates

(djula:add-template-directory
 (asdf:system-relative-pathname :my-app #p"templates/"))

(defparameter +index+ (djula:compile-template* "index.html"))

;;; Views

@route app "/"
(defview index ()
  (render-template (+index+)))

