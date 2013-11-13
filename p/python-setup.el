(setenv "PYMACS_PYTHON" "~/.emacs.d/emacs_env/bin/python")
(require 'python)

(require 'pymacs)
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-codeassist-maxfixes 3)
(setq ropemacs-guess-project t)
(setq ropemacs-enable-autoimport t)

;; Auto Search for rope project directory for once
;; current or upper directory
(add-hook 'python-mode-hook
          (lambda ()
            (cond ((file-exists-p ".ropeproject")
                   (rope-open-project default-directory))
                  ((file-exists-p "../.ropeproject")
                   (rope-open-project (concat default-directory "..")))
                  )))

(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation-mode)
(set-face-background 'highlight-indentation-face "#454545")
(set-face-background 'highlight-indentation-current-column-face "#8A8A8A")

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
