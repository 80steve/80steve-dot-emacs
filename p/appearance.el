(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/solarized")
(add-to-list 'custom-theme-load-path "~/.emacs.d/vendor/themes")
(load-theme 'tomorrow-night t)

(set-frame-font "Droid_Sans_Mono-12")

(require 'powerline)
(powerline-default-theme)

(provide 'appearance)
