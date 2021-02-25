;;; python-setup.el --- Python Setup
;;; Commentary:
;;; Code:
(require 'python)

(pyvenv-workon "emacs")
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

(require 'py-isort)
(defun my-pysort-hook ()
  "pop kill ring after isort."
  (let ((org (car kill-ring)))
    (py-isort-before-save)
    (cond ((not (eq org (car kill-ring))) (pop kill-ring))))
  )
(add-hook 'before-save-hook 'my-pysort-hook)

(defvar company-backends)
(defun my-python-hook ()
  "Configure company backend & newline behaviour."
  (add-to-list 'company-backends 'company-anaconda)
  (define-key python-mode-map (kbd "RET") 'newline-and-indent)
  (local-set-key (kbd "C-c C-i") 'py-isort-buffer)
  (local-set-key (kbd "C-c C-f") 'anaconda-mode-show-doc))

(add-hook 'python-mode-hook 'my-python-hook)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
(add-hook 'python-mode-hook 'yapf-mode)


(provide 'python-setup)
;;; python-setup.el ends here
