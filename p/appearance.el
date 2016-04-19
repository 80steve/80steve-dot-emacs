;;; appearance.el --- General Appearance of Emacs
;;; Code:
;;; Commentary:
(load-theme 'spacemacs-dark t)

(set-face-attribute 'default nil :family "Menlo")

(require 'powerline)
(powerline-default-theme)
(setq powerline-default-separator 'wave)
(setq powerline-height 16)

(require 'git-gutter)
(global-git-gutter-mode)

(provide 'appearance)
;;; appearance.el ends here
