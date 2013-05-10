;; general config
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(setq-default major-mode 'text-mode)
(set-language-environment 'UTF-8)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(delete-selection-mode 1)
(global-linum-mode 1)
(setq linum-format "%d ")
(global-font-lock-mode 1) ; function
(setq font-lock-maximum-decoration t)
(setq-default fill-column 120)
(setq auto-fill-mode 1)
(transient-mark-mode t)
(global-hl-line-mode 1)
(show-paren-mode t)
(blink-cursor-mode -1)
(setq indicate-empty-lines t)
(setq ns-pop-up-frames nil) ; show in current frame
(fset 'yes-or-no-p 'y-or-n-p)
(setq-default require-final-newline t)
(setq next-line-add-newlines nil)
(setq message-log-max 256)
(setq initial-frame-alist '( (top . 10) (left . 30) (width . 185) (height . 55) ))


;; mode line info display
(setq line-number-mode t)
(setq column-number-mode t)

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
;(setq scroll-conservatively 5)
(setq mouse-wheel-scroll-amount '(3))
(setq mouse-wheel-progressive-speed nil)

;; Electric Pair Mode to replace skeleton pairs
(electric-pair-mode t)

;; Electric Indent Mode, new minor mode 24.1 for triggering reindentation
(electric-indent-mode t)

;; Default buffer listing to ibuffer
(defalias 'list-buffers 'ibuffer)

;; Remove trailing whitespace when save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; vendor

;; Auto Pair
;(require 'autopair)
;(autopair-global-mode)

;; Window-Numbering Mode
(require 'window-numbering)
(window-numbering-mode 1)

;; Browse Kill Ring
(require 'browse-kill-ring)
(global-set-key "\C-cy" '(lambda () (interactive) (popup-menu 'yank-menu)))

;; Flymake Cursor
(require 'flymake-cursor)

;; end vendor

(provide 'global)
