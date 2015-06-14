;;; package --- Go Mode Setup
;;; Commentary:
;;; Code:
(require 'go-mode)

(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH")
  (exec-path-from-shell-copy-env "GOROOT"))

;; (setenv "GOPATH" "/Users/stevechan/.gvm/pkgsets/go1.4.2/dev")
;; (setenv "GOROOT" "/Users/stevechan/.gvm/gos/go1.4.2")

(defun go-mode-setup()
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "C-c C-g") 'go-goto-imports)
  (local-set-key (kbd "C-c C-f") 'gofmt)
  (local-set-key (kbd "C-c d") 'godoc))

(add-hook 'go-mode-hook 'go-mode-setup)

;; (load "$GOPATH/src/code.google.com/p/go.tools/cmd/oracle/oracle.el")
;; (add-hook 'go-mode-hook 'go-oracle-mode)

(provide 'go-setup)
;;; go-setup ends here
