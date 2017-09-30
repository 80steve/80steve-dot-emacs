;;; package --- Go Mode Setup
;;; Commentary:
;;; Code:
(require 'go-mode)

(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))

(defun go-mode-setup()
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "C-c C-g") 'go-goto-imports)
  (local-set-key (kbd "C-c C-f") 'gofmt)
  (local-set-key (kbd "C-c d") 'godoc))

(add-hook 'go-mode-hook 'go-mode-setup)

(require 'go-guru)
(add-hook 'go-mode-hook 'go-guru-hl-identifier-mode)

(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)


(provide 'go-setup)
;;; go-setup ends here
