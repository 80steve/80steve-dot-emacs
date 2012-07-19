(require 'c-setup)
(autoload 'php-mode "php-setup" "PHP editing mode." t)
(autoload 'python-mode "python-setup" "Python Mode." t)
(autoload 'js2-mode "js2" "Javascript Mode." t)
(autoload 'multi-web-mode "multi-web-setup" "Multi Web Mode." t)

(setq auto-mode-alist (cons '("\\.php$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.module$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.inc$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.install$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.engine$" . php-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.html$" . multi-web-mode) auto-mode-alist))

(provide 'mode-setup)
