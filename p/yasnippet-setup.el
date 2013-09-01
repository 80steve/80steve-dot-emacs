(require 'yasnippet)
(setq yas-snippet-dirs "~/.emacs.d/vendor/yasnippet/snippets")
(yas-global-mode 1)
(require 'dropdown-list)
(setq yas-prompt-functions '(yas-dropdown-prompt
                             yas-completing-prompt
                             yas-ido-prompt))

(provide 'yasnippet-setup)
