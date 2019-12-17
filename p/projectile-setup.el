;;; Package --- Projectile Setup
;;; Commentary:
;;; Code:

(use-package projectile
  :defer t
  :config
  (projectile-mode)

  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

  (define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
  (define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
  (define-key projectile-mode-map [?\s-t] 'projectile-find-file)
  (define-key projectile-mode-map [?\s-g] 'projectile-grep)

  (setq projectile-indexing-method 'hybrid)
  (setq projectile-sort-order 'recentf)
  (setq projectile-enable-caching t)
  )

(provide 'projectile-setup)
;;; projectile-setup.el ends here
