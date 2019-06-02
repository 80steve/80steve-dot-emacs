;;; Package --- General Appearance of Emacs
;;; Code:
;;; Commentary:
(load-theme 'spacemacs-dark t)

(set-face-attribute 'default nil :family "Hack" :height 110)

(require 'powerline)
(powerline-default-theme)
(setq powerline-default-separator 'wave)
(setq powerline-height 16)

(use-package git-gutter
  :defer 2
  :config
  (global-git-gutter-mode)
  )

(provide 'appearance)
;;; appearance.el ends here
