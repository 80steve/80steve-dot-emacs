;;; python-setup.el --- Python Setup
;;; Commentary:
;;; Code:
(require 'python)

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

(use-package highlight-indentation
  :defer t
  :config
  (set-face-background 'highlight-indentation-face "#454545")
  (set-face-background 'highlight-indentation-current-column-face "#8A8A8A")
  )
(add-hook 'python-mode-hook 'highlight-indentation-mode)

(require 'py-isort)
(add-hook 'before-save-hook 'py-isort-before-save)

(defvar company-backends)
(defun my-python-hook ()
  "Configure company backend & newline behaviour."
  (add-to-list 'company-backends 'company-anaconda)
  (define-key python-mode-map (kbd "RET") 'newline-and-indent))
(add-hook 'python-mode-hook 'my-python-hook)

(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
(add-hook 'python-mode-hook 'yapf-mode)

(provide 'python-setup)
;;; python-setup.el ends here
