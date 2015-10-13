(require 'projectile)
(projectile-global-mode)

(define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
(define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
(define-key projectile-mode-map [?\s-t] 'projectile-find-file)
(define-key projectile-mode-map [?\s-g] 'projectile-grep)

(setq projectile-enable-caching t)

(provide 'projectile-setup)
