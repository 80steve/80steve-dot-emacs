;; Reload dot Emacs
(defun reload-dot-emacs()
  "reload dot emacs file"
  (interactive)
  (if(bufferp (get-file-buffer "init.el"))
      (save-buffer(get-buffer "init.el")))
  (load-file "~/.emacs.d/init.el")
  (message ".emacs reloaded successfully"))

;; Indent Whole Buffer
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

;; Copy Line
(defun copy-line ()
  (interactive)
  (copy-region-as-kill (line-beginning-position) (line-end-position)))

(global-set-key "\C-cc" 'copy-line)

;; Duplicate Line
(defun duplicate-line ()
  (interactive)
  (let ((org (point)))
    (copy-line)
    (end-of-line)
    (newline-and-indent)
    (yank)
    (if (/= (length (cdr kill-ring)) 0)
        (progn (setq kill-ring (cdr kill-ring))
                     (rotate-yank-pointer 1))
      (setq kill-ring '()))
    (goto-char org)))

(global-set-key "\C-cd" 'duplicate-line)

;; move line up
(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(global-set-key [(control shift up)] 'move-line-up)

;; move line down
(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(global-set-key [(control shift down)] 'move-line-down)

(provide 'keys-binding)