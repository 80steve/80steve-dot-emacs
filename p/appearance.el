;;; appearance.el --- General Appearance of Emacs
;;; Code:
;;; Commentary:
(load-theme 'monokai t)

(set-face-attribute 'default nil :family "Droid_Sans_Mono")
(set-fontset-font "fontset-default"
                  'unicode
                  '("Heiti TC"))

(require 'powerline)
(powerline-default-theme)
(setq powerline-default-separator 'contour)
(custom-set-faces
 '(powerline-active1 ((t (:background "gray15" :foreground "white"))))
 '(powerline-active2 ((t (:background "DarkSlateGray" :foreground "white"))))
 '(powerline-inactive1 ((t (:background "gray15" :foreground "gray50"))))
 '(mode-line ((t (:background "DarkSlateGray" :foreground "gray80"))))
 '(mode-line-buffer-id ((t (:foreground "gray80")))))

(require 'git-gutter)
(global-git-gutter-mode)

(provide 'appearance)
;;; appearance.el ends here
