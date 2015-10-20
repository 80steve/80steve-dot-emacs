;;; package --- Mode Setup
;;; Commentary:
;;; Code:
;(require 'c-setup)
;(autoload 'c-mode "c-setup" "C Mode." t)
;(autoload 'c++-mode "c-setup" "C Mode." t)
(autoload 'php-mode "php-setup" "PHP mode." t)
(autoload 'python-mode "python-setup" "Python Mode." t)
(autoload 'go-mode "go-setup" "Go Mode." t)

; try shutting off the warning from php-indent
(setq php-mode-warn-if-mumamo-off nil)

(require 'js2-mode)
(setq js2-basic-offset 2)
(autoload 'js2-mode "js2" "Javascript Mode." t)
(autoload 'coffee-mode "coffee-setup" "CoffeeScript Mode." t)

(defun modify-syntax-table-for-jsx ()
  (modify-syntax-entry ?< "(>")
  (modify-syntax-entry ?> ")<"))

(add-hook 'js2-mode-hook 'modify-syntax-table-for-jsx)

(setq auto-mode-alist (cons '("\\.php$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.html.php$" . web-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.module$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.inc$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.install$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.engine$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.js$" . js2-mode) auto-mode-alist))

(require 'web-mode)
(setq auto-mode-alist (cons '("\\.html$" . web-mode) auto-mode-alist))
(setq web-mode-engines-alist
      '(("django" . "\\.djhtml$")
        ("django" . "\\.html$")))
(setq web-mode-enable-current-element-highlight t)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 4)
(setq web-mode-enable-auto-pairing t)

(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Modeline Setup
(require 'diminish)
(eval-after-load "projectile" '(diminish 'projectile-mode " P "))
(eval-after-load "helm" '(diminish 'helm-mode " H "))
(eval-after-load "auto-complete" '(diminish 'auto-complete-mode " AC "))
(eval-after-load "yas-minor-mode" '(diminish 'yas-minor-mode))
(eval-after-load "yasnippet" '(diminish 'yas-minor-mode))
(eval-after-load "flycheck" '(diminish 'flycheck-mode))
(eval-after-load "anzu" '(diminish 'anzu-mode))
(eval-after-load "golden-ratio" '(diminish 'golden-ratio-mode " G "))

(provide 'mode-setup)
;;; mode-setup ends here
