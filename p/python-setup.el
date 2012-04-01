(setenv "PYMACS_PYTHON" "~/.emacs.d/emacs_env/bin/python")
(require 'python-mode)

(require 'pymacs)
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)
(setq rope-generate-autoimport-cache t)

(provide 'python-setup)