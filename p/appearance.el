(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/solarized")
(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/themes")
(load-theme 'solarized-dark t)

(set-face-attribute 'default nil :family "Droid_Sans_Mono")
(set-fontset-font "fontset-default"
                  'unicode
                  '("Heiti TC"))

(require 'powerline)
(custom-set-faces
 '(header-line ((t (:inherit hl-line))))
 '(magit-item-highlight ((t (:inherit hl-line))))
 '(mode-line ((t (:foreground "gray10" :background "OliveDrab3" :box nil)))))

(provide 'appearance)
