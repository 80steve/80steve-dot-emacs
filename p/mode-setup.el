;;; package --- Mode Setup
;;; Commentary:
;;; Code:
(autoload 'php-mode "php-setup" "PHP mode." t)
(autoload 'python-mode "python-setup" "Python Mode." t)
(autoload 'go-mode "go-setup" "Go Mode." t)

;; try shutting off the warning from php-indent
(defvar php-mode-warn-if-mumamo-off)
(setq php-mode-warn-if-mumamo-off nil)

(defvar exec-path-from-shell-variables)
(setq exec-path-from-shell-variables (quote ("PATH" "NVM_PATH" "GOPATH")))

(require 'exec-path-from-shell)
(when (memq window-system '(mac ns nil))
  exec-path-from-shell-variables
  (exec-path-from-shell-initialize))

(require 'js2-mode)
(setq js2-basic-offset 4)
(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)
(autoload 'js2-mode "js2" "Javascript Mode." t)
(autoload 'coffee-mode "coffee-setup" "CoffeeScript Mode." t)

(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(define-key js-mode-map (kbd "M-.") nil)

(setq auto-mode-alist (cons '("\\.php$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.html.php$" . web-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.module$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.inc$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.install$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.engine$" . php-mode) auto-mode-alist))

(require 'web-mode)
(setq auto-mode-alist (cons '("\\.html$" . web-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.js$" . web-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\index.ios.js$" . web-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\index.android.js$" . web-mode) auto-mode-alist))

(defvar web-mode-content-types-alist)
(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?$")))

(defvar web-mode-engines-alist)
(setq web-mode-engines-alist
      '(("django" . "\\.djhtml$")
        ("django" . "\\.html$")))

(setq web-mode-enable-current-element-highlight t)
(setq web-mode-code-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-enable-auto-pairing t)

(require 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)

(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Modeline Setup
(require 'diminish)
(eval-after-load "projectile" '(diminish 'projectile-mode " P "))
(eval-after-load "helm" '(diminish 'helm-mode " H "))
(eval-after-load "company" '(diminish 'company-mode " CO "))
(eval-after-load "yas-minor-mode" '(diminish 'yas-minor-mode))
(eval-after-load "yasnippet" '(diminish 'yas-minor-mode))
(eval-after-load "flycheck" '(diminish 'flycheck-mode))
(eval-after-load "anzu" '(diminish 'anzu-mode))
(eval-after-load "golden-ratio" '(diminish 'golden-ratio-mode " G "))

(provide 'mode-setup)
;;; mode-setup ends here
