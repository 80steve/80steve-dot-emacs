;;; Package --- General Appearance of Emacs
;;; Code:
;;; Commentary:
(load-theme 'nord t)

(set-face-attribute 'default nil :family "Hack" :height 106)
(setq-default line-spacing 0.16)

(require 'powerline)
(powerline-default-theme)
(setq powerline-default-separator 'wave)
(setq powerline-height 16)

(use-package git-gutter
  :defer 5
  :config
  (global-git-gutter-mode)
  )

(provide 'appearance)
;;; appearance.el ends here
