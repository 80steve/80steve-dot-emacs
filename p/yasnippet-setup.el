(require 'yasnippet)
(setq yas-snippet-dirs "~/.emacs.d/vendor/yasnippet/snippets")
(yas-global-mode 1)
(setq yas-prompt-functions '(yas-dropdown-prompt
                             yas-ido-prompt
                             yas-completing-prompt))

(provide 'yasnippet-setup)
