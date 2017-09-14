;;; appearance.el --- General Appearance of Emacs
;;; Code:
;;; Commentary:
(load-theme 'spacemacs-dark t)

(set-face-attribute 'default nil :family "Droid Sans Mono" :height 140)

(require 'powerline)
(powerline-default-theme)
(setq powerline-default-separator 'wave)
(setq powerline-height 16)

(require 'git-gutter)
(global-git-gutter-mode)

(provide 'appearance)
;;; appearance.el ends here
