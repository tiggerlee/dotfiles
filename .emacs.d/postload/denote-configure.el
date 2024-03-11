(require 'denote)

(setq denote-directory (expand-file-name "~/Documents/personal/myorg/notes/"))

;; Denote DOES NOT define any key bindings.  This is for the user to
;; decide.  For example:
(let ((map global-map))
  (define-key map (kbd "C-c n n") #'denote)
  (define-key map (kbd "C-c n i") #'denote-link-or-create)
  (define-key map (kbd "C-c n f f") #'denote-find-link)
  (define-key map (kbd "C-c n r") #'denote-rename-file))
