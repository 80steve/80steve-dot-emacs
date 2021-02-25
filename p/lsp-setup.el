;;; Package --- lsp Setup
;;; Commentary:
;;; Code:

(use-package lsp-mode
  :hook
  (go-mode . lsp-deferred)
  (js-mode . lsp-deferred)
  (js2-mode . lsp-deferred)
  (typescript-mode . lsp-deferred)
  (web-mode . lsp-deferred)
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c C-l")
  (setq lsp-completion-enable t)
  (setq lsp-enable-snippet t)
  (setq lsp-keep-workspace-alive t)
  (setq lsp-enable-xref t)
  (setq lsp-enable-imenu t)
  :config
  (setq lsp-prefer-flymake nil)
  (setq company-backends
        '((company-files
           company-keywords
           company-capf
           )
          (company-abbrev company-dabbrev)))
  )


(use-package lsp-ui
  :defer t
  :config
  (setq lsp-ui-doc-enable t)
  (setq lsp-ui-doc-position 'top)
  (setq lsp-ui-doc-include-signature t)
  (setq lsp-ui-peek-enable t)
  (setq lsp-ui-peek-always-show t)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-ui-flycheck-live-reporting t)
  :bind (:map lsp-ui-mode-map
              ([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
              ([remap xref-find-references] . lsp-ui-peek-find-references)
              ("C-c u" . lsp-ui-imenu))
  )

(provide 'lsp-setup)
;;; lsp-setup ends here
