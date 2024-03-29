;;; Package --- Init
;;; Commentary:
;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defvar home-dir (file-name-directory load-file-name)
  "The root dir of Emacs configure.")

(defvar setup-dir (concat home-dir "p/")
  "This directory house setup files.")
(defvar vendor-dir (concat home-dir "vendor/")
  "This directory house Emacs Lisp packages that are not yet available in ELPA (or MELPA).")

(add-to-list 'load-path vendor-dir)
(let ((default-directory vendor-dir)) (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'load-path setup-dir)

(require 'package-setup)
(require 'global)
(require 'appearance)
(require 'keys-binding)
(require 'tramp-setup)
(require 'eshell-setup)
(require 'yasnippet-setup)
(require 've-setup)
(require 'helm-setup)
(require 'mode-setup)
(require 'lsp-setup)
(require 'vue-setup)
(require 'react-setup)
(require 'recentf-setup)
(require 'uniquify-setup)
(require 'company-setup)
(require 'magit-setup)
(require 'dired-setup)
(require 'ag-setup)
(require 'projectile-setup)
(require 'ace-jump-setup)
(require 'mc-setup)
(require 'flycheck-setup)
(require 'origami-setup)
(require 'org-setup)

(provide 'init)
;;; init.el ends here
