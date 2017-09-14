;;; eshell-setup.el --- EShell Setup
;;; Commentary:
;;; Code:
(require 'eshell)

(defvar eshell-save-history-on-exit)
(defvar eshell-history-size)
(defvar eshell-hist-ignoredups)
(defvar eshell-cmpl-ignore-case)
(defvar eshell-cp-interactive-query)
(defvar eshell-mv-interactive-query)
(defvar eshell-rm-interactive-query)

(setq
 eshell-save-history-on-exit t
 eshell-history-size 128
 eshell-hist-ignoredups t
 eshell-cmpl-ignore-case t
 eshell-cp-interactive-query t
 eshell-mv-interactive-query t
 eshell-rm-interactive-query t
 eshell-scroll-to-bottom-on-input t)

(defun eshell-here ()
  "Opens a new shell in the directory with the current buffer's file."
  (interactive)
  (let* ((parent (if (buffer-file-name)
                     (file-name-directory (buffer-file-name))
                   default-directory))
         (height (/ (window-total-height) 3))
         (name (car (last (split-string parent "/" t)))))
    (split-window-vertically (- height))
    (other-window 1)
    (eshell "new")
    (rename-buffer (concat "*eshell: " name "*"))
    (insert (concat "ls"))
    (eshell-send-input)))

(global-set-key (kbd "C-!") 'eshell-here)

(defun eshell/magit ()
  "Magit status on the current directory read from ARGS."
  (magit-status nil nil))

(defun eshell/d ()
  "Show dired in current director or ARGS if specified."
  (dired "."))

(defun eshell/clearup ()
  "Clears the shell buffer ala Unix's clear or DOS' cls."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer))
  (eshell-send-input))

(add-hook 'eshell-mode-hook
          (lambda ()
            (eshell/alias "e" "find-file $1")
            (eshell/alias "ff" "find-file $1")
            (eshell/alias "emacs" "find-file $1")
            (eshell/alias "ee" "find-file-other-window $1")
            (define-key eshell-mode-map (kbd "C-l") 'eshell/clearup)
            ))

(provide 'eshell-setup)
;;; eshell-setup.el ends here
