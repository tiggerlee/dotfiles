;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; INSTALL PACKAGES ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(package-initialize)

(defun install-packages* (packages)
  (dolist (p packages)
    (when (not (package-installed-p p))
      (package-install p))))

(defun install-packages (packages)
  (condition-case nil
      (install-packages* packages)
    (error
     (package-refresh-contents)
     (install-packages* packages))))
