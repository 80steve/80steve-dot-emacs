(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/vendor/color-theme-tomorrow.el")
(color-theme-tomorrow-night)
(set-face-background 'hl-line "grey20")
(set-face-background 'region "#330") ;; Search Highlight Color
(set-default-font "Droid_Sans_Mono-12")

(provide 'appearance)
