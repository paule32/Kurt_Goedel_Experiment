;; ----------------------------------------------------
;; my-project.lisp - a simple test.
;;
;; (c) 2022 by Jens Kallup - paule32
;; all rights reserved.
;;
;; Notes (2022-12-18):
;; - you have to install "quicklisp.lisp" on seperate
;;   file. Then you have to create the file "quick.ok"
;;   in the working directory where this source file(s)
;;   exists.
;; ----------------------------------------------------
(format T "Please wait, loading packages ...~%")

#-quicklisp
(let ((quicklisp-init "quicklisp/setup.lisp"))
    (when (probe-file quicklisp-init)
        (load quicklisp-init)))

(with-open-stream (*standard-output* (make-broadcast-stream))
    (ql:quickload :mito)
    (ql:quickload '(:qtools :qtcore :qtgui))
)

;; ----------------------------------------------------
;; global scope
;; ----------------------------------------------------
(defvar *grammar*)
(defvar *alist*)

(defvar *i0*)
(defvar *i1*)
(defvar *i2*)

;; ----------------------------------------------------
;; functions:
;; ----------------------------------------------------
(defun test1 () (progn
    (setq *alist*
    '(
        (1 . ich)
        (2 . du)

        (10 . habe)
        (20 . dich)

        (30 . gefragt)
    ))

    (setq *grammar*
    '((1)
    (1 10)
    (1 10 20)
    (1 10 20 30)))

    (setq  *i0* (assoc '1 *grammar*))
    (setq  *i1* (progn
        (cdr (assoc '1  *alist*  ))
        (cdr (assoc '10 *alist*  ))
    ))

    (setq *i0* '(1 10 20))

    (setq *i1* (loop for x in *i0* collect (car (assoc x *alist* ))))
    (setq *i2* (loop for y in *i0* collect (cdr (assoc y *alist* ))))

    (print *i1* )
    (print *i2* )

    (if (eq T (equal '(ich habe dich) *i2*))
        (progn
            (format T "~%Der Satz ist richtig.")
            (exit)
        )
        (progn
            (format T "~%Der Satz ist falsch .")
            (exit)
        )
    )
))

;; ----------------------------------------------------
;; entry, exception handler ...
;; ----------------------------------------------------
(handler-case (progn
    (with-open-file (stream "quick.ok"
    :direction :input
    :if-does-not-exist :error))
    (format T "start test 1 ...~%")
    (test1))
(error (c) (progn
    (format T "QuickLisp missing.~%")
    (load "quicklisp")
    (exit)
)))
