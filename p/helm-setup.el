(require 'helm)
(require 'helm-grep)
(require 'helm-files)

(setq helm-command-prefix-key "C-c h")

(require 'helm-config)
(require 'helm-projectile)

(setq helm-quick-update                     t
      helm-split-window-in-side-p           t
      helm-buffers-fuzzy-matching           t
      helm-move-to-line-cycle-in-source     t
      helm-ff-search-library-in-sexp        t
      helm-ff-file-name-history-use-recentf t)

(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(define-key helm-command-map (kbd "o")     'helm-occur)
(define-key helm-command-map (kbd "g")     'helm-do-grep)
(define-key helm-command-map (kbd "C-c w") 'helm-wikipedia-suggest)
(define-key helm-command-map (kbd "SPC")   'helm-all-mark-rings)

(define-key helm-grep-mode-map (kbd "RET") 'helm-grep-mode-jump-other-window)
(define-key helm-grep-mode-map (kbd "n")   'helm-grep-mode-jump-other-window-forward)
(define-key helm-grep-mode-map (kbd "p")   'helm-grep-mode-jump-other-window-backward)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-h f") 'helm-apropos)
(global-set-key (kbd "C-h r") 'helm-info-emacs)
(global-set-key (kbd "C-h C-l") 'helm-locate-library)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "s-r") 'helm-imenu)

(define-key minibuffer-local-map (kbd "C-c C-l") 'helm-minibuffer-history)

(setq projectile-completion-system 'helm)

(helm-mode 1)

(provide 'helm-setup)
