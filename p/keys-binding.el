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

;; Select Word
(defun select-word (start end)
  (interactive "r")
  (let (pt (mbh mark-even-if-inactive))
    (if (region-active-p)
        (skip-chars-forward " "))
    (skip-chars-backward "-_A-Za-z0-9")
    (setq pt (point))
    (skip-chars-forward "-_A-Za-z0-9")
    (if (region-active-p)
        (push-mark (region-beginning))
      (progn (if (eq (mark) nil)
                 (set-mark (region-beginning)))
             (set-mark pt)))))
;      (set-mark pt))))

(global-set-key "\C-cw" 'select-word)

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

(global-set-key "\C-ce" 'duplicate-line)

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

;; mark line
(defun mark-line (&optional arg)
  "Marks a line"
  (interactive "p")
  (beginning-of-line)
  (push-mark (point) nil t)
  (end-of-line))

(global-set-key (kbd "C-c l") 'mark-line)

;; Comment line or region
(defun comment-line-or-region ()
  "Comment line or region if active"
  (interactive)
  (if (region-active-p)
      (comment-or-uncomment-region (region-beginning) (region-end))
    (comment-or-uncomment-region (line-beginning-position) (line-end-position))))

(global-set-key (kbd "s-/") 'comment-line-or-region)

(defun smart-kill-whole-line (&optional arg)
  "A simple wrapper around `kill-whole-line' that respects indentation."
  (interactive "P")
  (kill-whole-line arg)
  (back-to-indentation))
(global-set-key [remap kill-whole-line] 'smart-kill-whole-line)

;; open new line below
(defun open-next-line (arg)
  "Move to the next line and then opens a line.
    See also `newline-and-indent'."
  (interactive "p")
  (end-of-line)
  (open-line arg)
  (next-line 1)
  (when newline-and-indent
    (indent-according-to-mode)))
(global-set-key (kbd "C-o") 'open-next-line)

;; open new line above
(defun open-previous-line (arg)
  "Open a new line before the current one.
     See also `newline-and-indent'."
  (interactive "p")
  (beginning-of-line)
  (open-line arg)
  (when newline-and-indent
    (indent-according-to-mode)))
(global-set-key (kbd "M-o") 'open-previous-line)

(defvar newline-and-indent t
  "Modify the behavior of the open-*-line functions to cause them to autoindent.")

(defun tab-to-spaces ()
  "Convert tab to spaces"
  (interactive)
  (save-excursion (untabify (point-min) (point-max))))

(defun pretty-print-json(&optional b e)
  (interactive "r")
  (shell-command-on-region b e "python -m json.tool" (current-buffer) t))

(provide 'keys-binding)
