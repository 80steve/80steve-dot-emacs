(require 'magit)

(setq magit-last-seen-setup-instructions "1.4.0")
(global-set-key "\C-cm" 'magit-status)

(require 'magit-gitflow)
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)

(provide 'magit-setup)
