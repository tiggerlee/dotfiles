(let* ((conf-dir (file-name-directory (or load-file-name "~/.emacs.d/")))
      (preload-dir (expand-file-name "preload" conf-dir))
      (custom-dir (expand-file-name "postload" conf-dir)))
  (add-to-list 'load-path preload-dir)
  (add-to-list 'load-path custom-dir)
  (mapc 'load (directory-files preload-dir 't "^[^#].*el$"))
  (install-packages
   '(;;; General crap
     helm
     zenburn-theme
     company
     magit
     expand-region
     ;;; Lisp
     paredit
     rainbow-delimiters
     ;;; racket mode
     racket-mode
     ;;; note taking
     denote
     cal-china-x
     ))
  (mapc 'load (directory-files custom-dir 't "^[^#].*el$")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("~/EverythingOfMine/myorg.tiggerlee.com/doit.org"))
 '(package-selected-packages
   '(cal-china-x denote rainbow-delimiters paredit expand-region magit company zenburn-theme helm)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
