;;; package --- Workgroups2 Setup
;;; Commentary:
;;; Code:
(require 'workgroups2)

(setq wg-prefix-key (kbd "C-c z"))
(setq wg-session-file "~/.emacs.d/.emacs_workgroups")

(setq wg-emacs-exit-save-behavior nil)
(setq wg-workgroups-mode-exit-save-behavior nil)

(setq wg-mode-line-display-on t)
(setq wg-flag-modified t)

(setq wg-mode-line-decor-left-brace "["
      wg-mode-line-decor-right-brace "]"
      wg-mode-line-decor-divider ":")

(workgroups-mode 1)

(provide 'wg-setup)
;;; wg-setup ends here
