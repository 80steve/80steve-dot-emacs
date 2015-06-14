;;; ac.el --- Autocomplete Setup
;;; Commentary:
;;; Code:
(require 'go-autocomplete)
(require 'auto-complete-config)

(ac-config-default)
(global-auto-complete-mode t)
(setq ac-dwim t)
(setq ac-delay 0.2)
(setq ac-auto-show-menu t)
(setq ac-quick-help-delay 0.2)
(setq ac-source-yasnippet nil)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
(define-key ac-completing-map "\e" 'ac-stop)
(setq ac-auto-start t)

(provide 'ac)
;;; ac.el ends here
