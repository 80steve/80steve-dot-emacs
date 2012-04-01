;; general config
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(setq-default major-mode 'text-mode)
(set-language-environment 'UTF-8)
(scroll-bar-mode -1)
(delete-selection-mode 1)
(global-linum-mode 1)
(setq linum-format "%d ")
(global-font-lock-mode 1) ; function
(setq-default fill-column 80)
(setq auto-fill-mode 1)
(transient-mark-mode t)
(global-hl-line-mode 1)
(show-paren-mode t)
(setq delete-by-moving-to-trash t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq initial-frame-alist '( (top . 10) (left . 0) (width . 250) (height . 85) ))

;; mode line info display
(setq line-number-mode t)
(setq column-number-mode t)
(setq display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)

;; config tab
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; disable auto save and backup
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq auto-save-list-file-prefix nil)

;; search hl
(setq search-highlight t)
(setq query-replace-highlight t)

;; scroll config
(setq scroll-step 1)
(setq scroll-conservatively 10000)

;; vendor

;; Window-Numbering Mode
(require 'window-numbering)
(window-numbering-mode 1)

;; Browse Kill Ring
(require 'browse-kill-ring)
(global-set-key "\C-cy" '(lambda () (interactive) (popup-menu 'yank-menu)))

;; end vendor

(provide 'global)