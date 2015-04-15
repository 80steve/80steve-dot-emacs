(require 'python)

(venv-workon "emacs")

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

(setq jedi:setup-keys t)
(require 'jedi)
(setq jedi:complete-on-dot t)
(add-hook 'python-mode-hook 'jedi:setup)

(defun my-python-hook ()
  (define-key python-mode-map (kbd "RET") 'newline-and-indent))
(add-hook 'python-mode-hook 'my-python-hook)
(add-hook 'python-mode-hook '(lambda ()
                               (setq electric-indent-mode nil)))

(provide 'python-setup)
