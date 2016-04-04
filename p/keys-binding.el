;;; package --- Keys Bindings Setup
;;; Commentary:
;;; Code:

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
  "Indent whole buffer."
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(global-set-key (kbd "s-i") 'iwb)

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
  (let (beg end (org (point)))
    (copy-line)
    (end-of-line)
    (newline-and-indent)
    (yank)
    (setq beg (line-beginning-position))
    (setq end (line-end-position))
    (indent-region beg end)
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
  "Marks a line."
  (interactive "p")
  (back-to-indentation)
  (push-mark (point) nil t)
  (end-of-line))

(global-set-key (kbd "C-c l") 'mark-line)

;; Comment line or region
(defun comment-line-or-region ()
  "Comment line or region if active."
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

;; remap C-; for mark
(global-set-key (kbd "C-;") 'set-mark-command)

;; reindent json
(defun pretty-print-json ()
  (interactive)
  (save-excursion
    (shell-command-on-region (point-min) (point-max) "export PYTHONIOENCODING=UTF-8; python -c 'import sys, json; data=sys.stdin.read(); print json.dumps(json.loads(data), sort_keys=True, indent=4).decode(\"unicode-escape\")'" (current-buffer) t)))
(global-set-key (kbd "M-p") 'pretty-print-json)

(defun fun-pretty-print-json(&optional b e)
  (interactive "r")
  (shell-command-on-region b e "python -m json.tool" (current-buffer) t))

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))

(define-key global-map (kbd "RET") 'newline-and-indent)

;; OrgMode Files
(global-set-key (kbd "C-c o")
                (lambda () (interactive) (find-file "~/Documents/OrgMode/personal.org")))
(global-set-key (kbd "C-c n")
                (lambda () (interactive) (find-file "~/Documents/OrgMode/notes.org")))

;; make sure the marked window stay where it is
(require 'dedicated)
(global-set-key (kbd "C-c z d") 'dedicated-mode)

(global-set-key (kbd "C-c g") 'goto-line)
(global-set-key (kbd "s-<return>") 'toggle-frame-fullscreen)

(provide 'keys-binding)
;;; keys-binding ends here
