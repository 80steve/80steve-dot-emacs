(setenv "PYMACS_PYTHON" "~/.emacs.d/emacs_env/bin/python")
(require 'python-mode)

(require 'pymacs)
;(autoload 'pymacs-apply "pymacs")
;(autoload 'pymacs-call "pymacs")
;(autoload 'pymacs-eval "pymacs" nil t)
;(autoload 'pymacs-exec "pymacs" nil t)
;(autoload 'pymacs-load "pymacs" nil t)
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
(add-hook 'python-mode-hook 'highlight-indentation)
(set-face-background 'highlight-indentation-face "#454545")
(set-face-background 'highlight-indentation-current-column-face "#8A8A8A")

(provide 'python-setup)
