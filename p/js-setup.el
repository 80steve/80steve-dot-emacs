;;; package --- Js Setup
;;; Commentary:
;;; Code:
(require 'js2-mode)
(setq js2-basic-offset 4)
(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)
(autoload 'js2-mode "js2" "Javascript Mode." t)

(require 'js2-refactor)
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")

(defvar company-backends)
(add-hook 'js-mode-hook (lambda ()
                          (add-to-list 'company-backends 'company-tern)
                          (tern-mode t)))
(add-hook 'js2-mode-hook (lambda ()
                           (add-to-list 'company-backends 'company-tern)
                           (tern-mode t)))
;;; js-setup ends here
