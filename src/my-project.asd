;----------------------------------------------------
; my-project.lisp - a simple test.
;
; (c) 2022 by Jens Kallup - paule32
; all rights reserved.
;----------------------------------------------------
(defsystem       "my-project"
    :version     "0.0.1"
    :author      "Jens Kallup - paule32"
    :license     "MIT"
    :depends-on  ("quicklisp" "mito" "qt")
    :components  ((:module "src"
                   :components
                 ((:file "main"))))
    :description "My Test Project")

