(require 'window-numbering)
(window-numbering-mode 1)

(require 'browse-kill-ring)
(global-set-key "\C-cy" '(lambda () (interactive) (popup-menu 'yank-menu)))

(provide 'misc-setup)