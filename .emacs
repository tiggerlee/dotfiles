;; M-x package-install RET zenburn-theme RET
(load-theme 'zenburn t)
;; make source code look better
(defvar org-src-fontify-natively t)
(setq org-todo-keywords
      '((sequence "TODO(t@/!)" "DOING(i!)" "|" "DONE(d@/!)" "CANCELED(c@/!)")))
;; the files to be used in the agenda display
;; (setq org-agenda-files (directory-files-recursively "~/org/agenda" "org$"))
;; default target for storing notes
(setq org-default-notes-file "~/Documents/personal/myorg/capture.org")

(set-register ?i '(file . "~/Documents/personal/myorg/index.org"))
(set-register ?r '(file . "~/Documents/personal/myorg/notes/did-you-do-your-best.org"))
(set-register ?t '(file . "~/Documents/personal/myorg/todo.org"))

(add-hook 'text-mode-hook 'visual-line-mode)

(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(zenburn-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
