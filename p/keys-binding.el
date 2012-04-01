;; Reload dot Emacs
(defun reload-dot-emacs()
  "reload dot emacs file"
  (interactive)
  (if(bufferp (get-file-buffer ".emacs"))
      (save-buffer(get-buffer ".emacs")))
  (load-file "~/.emacs")
  (message ".emacs reloaded successfully"))

; Indent Whole Buffer
(defun iwb ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

;; Search Occur Mode
(define-key isearch-mode-map (kbd "C-o")
  (lambda ()
    (interactive)
    (let ((case-fold-search isearch-case-fold-search))
      (occur (if isearch-regexp isearch-string
               (regexp-quote isearch-string))))))

;; Windows Move
(require 'windmove)
(windmove-default-keybindings 'control)

(global-set-key (kbd "M-k") 'kill-this-buffer)
(global-set-key [kp-delete] 'delete-char)

(provide 'keys-binding)