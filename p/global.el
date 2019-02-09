;;; Package --- Global Config
;;; Commentary:
;;; Code:
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(setq initial-major-mode 'text-mode)
(setq-default major-mode 'text-mode)
(set-language-environment 'utf-8)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(delete-selection-mode 1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers "%d ")
(global-font-lock-mode 1) ; function
(setq font-lock-maximum-decoration t)
(setq-default fill-column 120)
(setq auto-fill-mode 1)
(transient-mark-mode t)
(global-hl-line-mode 1)
(show-paren-mode t)
(blink-cursor-mode -1)
(setq-default indicate-empty-lines 1)
(setq ns-pop-up-frames nil) ; show in current frame
(fset 'yes-or-no-p 'y-or-n-p)
(setq-default require-final-newline t)
(setq next-line-add-newlines nil)
(setq message-log-max 256)
(setq auto-window-vscroll nil)

;; Frame Adjustment
(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
      (progn
        (if (> (x-display-pixel-width) 1600)
            (set-frame-width (selected-frame) 180)
          (set-frame-width (selected-frame) 120))
        (setq my-height (/ (- (display-pixel-height) 200)
                           (frame-char-height)))
        (set-frame-height (selected-frame) my-height)
        (setq my-position-x (/ (/ (- (display-pixel-width) (frame-pixel-width (selected-frame)))
                                  (frame-char-width)) 2))
        (set-frame-position (selected-frame) my-position-x 90)
        )))
(global-set-key (kbd "C-x 9") 'set-frame-size-according-to-resolution)


;; Make sure scrollbar doesn't show even on emacsclient
(defun disable-scrollbar (_)
  "Disable scrollbar."
  (scroll-bar-mode -1))
(add-to-list 'after-make-frame-functions 'disable-scrollbar)


(setq echo-keystrokes 0.1)
(setq use-dialog-box nil)
(setq visible-bell 0)
(setq ring-bell-function 'ignore)


;; change default directory
(setq default-directory "~/")

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
(setq mouse-wheel-follow-mouse 't)

;; Aggressive Delete
(global-hungry-delete-mode t)

;; Electric Pair Mode to replace skeleton pairs
(electric-pair-mode t)

;; Electric Indent Mode, new minor mode 24.1 for triggering reindentation
(electric-indent-mode t)

;; Default buffer listing to ibuffer
(defalias 'list-buffers 'ibuffer)

;; Remove trailing whitespace when save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(global-auto-revert-mode 1)

;; Auto cleanup old buffer
(require 'midnight)

;; vendor

;; Auto Pair
;(require 'autopair)
;(autopair-global-mode)

;; Sticky Windows
(require 'dedicated)

;; ANZU - showing match count in modeline
(global-anzu-mode +1)

;; Window-Numbering Mode
(require 'window-numbering)
(window-numbering-mode 1)

;; Aggressive Indent
(global-aggressive-indent-mode 1)

;; end vendor

(provide 'global)
;;; global.el ends here
