(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/solarized")
(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/themes")
;(load-theme 'zenburn t)
(load-theme 'tomorrow-night t)

(set-face-attribute 'default nil :family "Droid_Sans_Mono")
(set-fontset-font "fontset-default"
                  'unicode
                  '("Heiti TC"))

(require 'powerline)
(powerline-default-theme)
(custom-set-faces
 '(header-line ((t (:inherit hl-line))))
 '(magit-item-highlight ((t (:inherit hl-line)))))

(provide 'appearance)
