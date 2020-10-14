;;; Package --- Mode Setup
;;; Commentary:
;;; Code:

(use-package exec-path-from-shell
  :defer 1
  :init
  (defvar exec-path-from-shell-variables)
  (setq exec-path-from-shell-variables (quote ("PATH" "NVM_PATH" "GOPATH")))
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))
  )

(autoload 'php-mode "php-setup" "PHP mode." t)
(autoload 'python-mode "python-setup" "Python Mode." t)
(autoload 'go-mode "go-setup" "Go Mode." t)
(autoload 'js2-mode "js-setup" "Js Mode." t)
(autoload 'js-mode "js-setup" "Js Mode." t)
(autoload 'javascript-mode "js-setup" "Js Mode." t)

(setq auto-mode-alist (cons '("\\.html$" . web-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.html.php$" . web-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.vue$" . web-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.php$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.module$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.inc$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.install$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.engine$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.yml$" . yaml-mode) auto-mode-alist))

(setq auto-mode-alist (cons '("\\.jsx$" . react-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.react.js$" . react-mode) auto-mode-alist))
(add-to-list 'magic-mode-alist '("/\\*\\* @jsx React\\.DOM \\*/" . react-mode))
(add-to-list 'magic-mode-alist '("^import React" . react-mode))

(use-package web-mode
  :defer t
  :init
  (defvar web-mode-engines-alist)
  :config
  (setq web-mode-engines-alist
        '(("django" . "\\.djhtml$")
          ("django" . "\\.html$")))
  (setq web-mode-content-types-alist
        '(("vue" . "\\.vue\\'")))

  (setq web-mode-enable-css-colorization t)
  (setq web-mode-enable-current-element-highlight t)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-enable-auto-pairing t)
  (emmet-mode)
  )

(use-package prettier-js-mode
:defer t
:bind ("C-c C-p" . prettier-js)
)

(defun enable-minor-mode (my-pair)
  "Enable minor mode if filename match the regexp.  MY-PAIR is a cons cell (regexp . minor-mode)."
  (if (buffer-file-name)
      (if (string-match (car my-pair) buffer-file-name)
          (funcall (cdr my-pair)))))

(add-hook 'web-mode-hook #'(lambda ()
                             (enable-minor-mode
                              '("\\.vue?\\'" . prettier-js-mode))))

(use-package emmet-mode
  :defer t
  :hook (web-mode css-mode scss-mode js3-mode)
  )

(use-package rainbow-delimiters
  :defer t
  )
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(use-package lsp-mode
  :defer t
  :hook (go-mode . lsp-deferred)
  :commands (lsp lsp-deferred)
  :config
  (setq lsp-prefer-flymake nil)
  )

(use-package lsp-ui
  :defer t
  :requires lsp-mode flycheck
  :init
  (add-hook 'lsp-mode-hook 'lsp-ui-mode)
  :config
  (setq lsp-ui-doc-enable t)
  (setq lsp-ui-doc-position 'top)
  (setq lsp-ui-doc-include-signature t)
  (setq lsp-ui-peek-enable t)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-ui-flycheck-live-reporting t)
  )

(use-package company-lsp
  :defer t
  )


;; Modeline Setup
(use-package diminish
  :defer 5
  :config
  (eval-after-load "projectile" '(diminish 'projectile-mode " P "))
  (eval-after-load "helm" '(diminish 'helm-mode " H "))
  (eval-after-load "company" '(diminish 'company-mode " CO "))
  (eval-after-load "yas-minor-mode" '(diminish 'yas-minor-mode))
  (eval-after-load "yasnippet" '(diminish 'yas-minor-mode))
  (eval-after-load "flycheck" '(diminish 'flycheck-mode))
  (eval-after-load "anzu" '(diminish 'anzu-mode))
  (eval-after-load "golden-ratio" '(diminish 'golden-ratio-mode " G "))
  )

(provide 'mode-setup)
;;; mode-setup ends here
