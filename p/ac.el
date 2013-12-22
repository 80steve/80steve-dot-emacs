(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)
(setq ac-dwim t)
(setq ac-delay 0.3)
(setq ac-auto-show-menu 0.3)
(setq ac-quick-help-delay 0.5)
(setq ac-source-yasnippet nil) ;; tmp-hack to avoid php-mode from getting error
(define-key ac-completing-map "\e" 'ac-stop)
(set-face-background 'ac-selection-face "purple")
(set-face-background 'ac-completion-face "steelblue")
(setq ac-auto-start t)

(provide 'ac)
