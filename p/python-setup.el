;;; python-setup.el --- Python Setup
;;; Commentary:
;;; Code:
(require 'python)

;(setq python-shell-virtualenv-path "~/.virtualenvs")
(venv-workon "emacs")

(defvar py-electric-colon-active-p)
(defvar py-electric-colon-greedy-p)
(defvar py-electric-colon-newline-and-indent-p)
(defvar py-empty-line-closes-p)

(setq py-electric-colon-active-p t)
(setq py-electric-colon-greedy-p t)
(setq py-electric-colon-newline-and-indent-p t)
(setq py-empty-line-closes-p t)

(setq-default flycheck-flake8rc
              (expand-file-name "~/.emacs.d/conf/flake8rc"))

(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation-mode)
(set-face-background 'highlight-indentation-face "#454545")
(set-face-background 'highlight-indentation-current-column-face "#8A8A8A")

(defvar company-backends)
(defun my-python-hook ()
  (add-to-list 'company-backends 'company-anaconda)
  (define-key python-mode-map (kbd "RET") 'newline-and-indent))
(add-hook 'python-mode-hook 'my-python-hook)

(add-hook 'python-mode-hook 'anaconda-mode)

(provide 'python-setup)
;;; python-setup.el ends here
