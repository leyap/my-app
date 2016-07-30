(defsystem my-app-test
  :author "lisper <leyapin@gmail.com>"
  :license "MIT"
  :description "Tests for my-app."
  :depends-on (:my-app
               :fiveam)
  :components ((:module "t"
                :serial t
                :components
                ((:file "my-app")))))
