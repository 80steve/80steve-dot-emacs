(require 'python-mode)

(setq py-electric-colon-active-p t)
(setq py-electric-colon-greedy-p t)
(setq py-electric-colon-newline-and-indent-p t)
(setq py-empty-line-closes-p t)

(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation-mode)
(set-face-background 'highlight-indentation-face "#454545")
(set-face-background 'highlight-indentation-current-column-face "#8A8A8A")

(setq jedi:setup-keys t)
(require 'jedi)
(setq jedi:server-command
      (list "~/.virtualenvs/emacs/bin/python" jedi:server-script))
(setq jedi:complete-on-dot t)
(add-hook 'python-mode-hook 'jedi:setup)

(add-hook 'python-mode-hook '(lambda ()
                               (setq electric-indent-mode nil)))

;; Flymake
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "~/.emacs.d/pycheckers" (list local-file))))

  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pyflakes-init)))

(provide 'python-setup)
