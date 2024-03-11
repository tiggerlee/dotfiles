;;; Stop nagging about the upstream branch
(setq magit-push-always-verify nil)
;; This seems to be a popular choice, Emacs Prelude uses it
(global-set-key (kbd "C-x g") 'magit-status)
