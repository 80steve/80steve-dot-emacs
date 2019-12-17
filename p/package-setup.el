;;; Package --- Package Setup
;;; Commentary:
;;; Code:
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'cl)

;; Fetch package when it's not already installed
;; Adopted from http://batsov.com/articles/2012/02/19/package-management-in-emacs-the-good-the-bad-and-the-ugly/

(defvar editor-packages
  '(avy ace-window ag aggressive-indent anaconda-mode anzu company company-go company-anaconda company-quickhelp
        company-tern dedicated diminish emmet-mode expand-region exec-path-from-shell flycheck flycheck-color-mode-line
        git-gutter git-link git-timemachine github-browse-file go-eldoc go-mode go-guru go-fill-struct graphql-mode helm
        helm-ag helm-flx helm-projectile highlight-indentation hungry-delete idle-highlight-mode js2-mode js2-refactor
        js-doc lsp-mode lsp-ui magit magit-gitflow magit-todos markdown-mode multiple-cursors neotree org-bullets
        org-super-agenda origami php-mode pip-requirements powerline prettier-js projectile pyvenv py-isort rainbow-delimiters
        react-snippets scss-mode smartparens spacemacs-theme use-package virtualenvwrapper web-mode window-numbering yaml-mode
        yapfify yasnippet)
  "Editor Package To Be Installed At Startup.")

(defun editor-packages-installed-p ()
  (loop for p in editor-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (editor-packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  (dolist (p editor-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'package-setup)
;;; package-setup.el ends here
