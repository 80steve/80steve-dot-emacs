(require 'color-theme)
;(color-theme-initialize) ;; not necessary if default theme not required
(load-file "~/.emacs.d/vendor/color-theme-tomorrow.el")
(color-theme-tomorrow-night)
(set-face-background 'hl-line "grey20")
(set-face-background 'region "#330") ;; Search Highlight Color
(set-frame-font "Droid_Sans_Mono-12")

(provide 'appearance)
