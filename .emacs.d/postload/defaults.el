;;; Theme
(load-theme 'zenburn t)
;;; fontify code in code blocks
(setq org-src-fontify-natively t)

;;; bind key for comment a line
(global-set-key (kbd "C-x ;") 'comment-line)

(set-register ?i '(file . "~/EverythingOfMine/myorg.tiggerlee.com/index.org"))
;;; use ibuffer replace default buffer list
(global-set-key [remap list-buffers] 'ibuffer)
;;; use M-o replace C-x o
(global-set-key (kbd "M-o") 'other-window)

;;; enable visual-line-mode
(add-hook 'text-mode-hook 'visual-line-mode)

;;; always display line number
(global-display-line-numbers-mode)
