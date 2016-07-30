(defsystem my-app
  :author "lisper <leyapin@gmail.com>"
  :maintainer "lisper <leyapin@gmail.com>"
  :license "MIT"
  :version "0.1"
  :homepage "https://github.com/leyap/my-app"
  :bug-tracker "https://github.com/leyap/my-app/issues"
  :source-control (:git "git@github.com:leyap/my-app.git")
  :depends-on (:lucerne
               :drakma
               :cl-gists
               :jonathan)
  :defsystem-depends-on (:asdf-linguist)
  :components ((:module "assets"
                :components
                ((:module "css"
                  :components
                  ((:sass "style")))
                 (:module "js"
                  :components
                  ((:static-file "scripts.js")))))
               (:module "src"
                :serial t
                :components
                ((:file "my-app"))))
  :description "first app"
  :long-description
  #.(uiop:read-file-string
     (uiop:subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op my-app-test))))
