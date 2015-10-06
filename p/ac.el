;;; ac.el --- Autocomplete Setup
;;; Commentary:
;;; Code:
(require 'go-autocomplete)
(require 'auto-complete-config)

(ac-config-default)
(global-auto-complete-mode t)
(setq ac-dwim t)
(setq ac-delay 0.3)
(setq ac-auto-show-menu 0.6)
(setq ac-quick-help-delay 1)
(setq ac-source-yasnippet nil)
(setq ac-auto-start 2)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
(define-key ac-completing-map "\e" 'ac-stop)

(provide 'ac)
;;; ac.el ends here
