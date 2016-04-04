;;; package --- Yasnippet Setup
;;; Commentary:
;;; Code:
(require 'yasnippet)

(yas-global-mode 1)
(require 'dropdown-list)
(setq yas-prompt-functions '(yas-dropdown-prompt
                             yas-completing-prompt
                             yas-ido-prompt))

(provide 'yasnippet-setup)
;;; yasnippet-setup ends here
