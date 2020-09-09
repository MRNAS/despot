
(cl:in-package :asdf)

(defsystem "laser_tag-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TagActionObs" :depends-on ("_package_TagActionObs"))
    (:file "_package_TagActionObs" :depends-on ("_package"))
    (:file "YoubotActionObs" :depends-on ("_package_YoubotActionObs"))
    (:file "_package_YoubotActionObs" :depends-on ("_package"))
  ))