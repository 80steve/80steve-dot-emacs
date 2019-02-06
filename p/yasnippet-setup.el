;;; package --- Yasnippet Setup
;;; Commentary:
;;; Code:
(require 'yasnippet)

(yas-global-mode 1)
(setq yas-prompt-functions '(yas-completing-prompt
                             yas-ido-prompt))

(provide 'yasnippet-setup)
;;; yasnippet-setup ends here
