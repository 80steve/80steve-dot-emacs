(require 'c-setup)
;(autoload 'c-mode "c-setup" "C Mode." t)
;(autoload 'c++-mode "c-setup" "C Mode." t)
(autoload 'php-mode "php-setup" "PHP mode." t)
(autoload 'python-mode "python-setup" "Python Mode." t)
(autoload 'js2-mode "js2" "Javascript Mode." t)
(autoload 'multi-web-mode "multi-web-setup" "Multi Web Mode." t)
(autoload 'coffee-mode "coffee-setup" "CoffeeScript Mode." t)

(setq auto-mode-alist (cons '("\\.php$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.module$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.inc$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.install$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.engine$" . php-mode) auto-mode-alist))

(require 'web-mode)

(setq auto-mode-alist (cons '("\\.html$" . web-mode) auto-mode-alist))
(setq web-mode-engines-alist
      '(("django" . "\\.djhtml$")
        ("django" . "\\.html$")))

(provide 'mode-setup)
