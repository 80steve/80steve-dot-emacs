(require 'ido)
(ido-mode t)
(setq ido-everywhere t
      ido-case-fold t
      ido-use-filename-at-point -1
      ido-use-url-at-point -1
      ido-confirm-unique-completion t
      ido-auto-merge-work-directories-length -1
      ido-enable-flex-matching t)

(provide 'ido-setup)