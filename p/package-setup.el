(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'cl)

;; Fetch package when it's not already installed
;; Adopted from http://batsov.com/articles/2012/02/19/package-management-in-emacs-the-good-the-bad-and-the-ugly/

(defvar editor-packages
  '(ace-jump-mode anzu auto-complete browse-kill-ring coffee-mode dedicated diminish dropdown-list expand-region eyebrowse flycheck
                  flycheck-color-mode-line golden-ratio git-gutter git-timemachine go-autocomplete go-mode helm helm-projectile
                  highlight-indentation idle-highlight-mode jedi js2-mode less-css-mode magit markdown-mode monokai-theme multiple-cursors
                  php-mode powerline prodigy projectile python-django rainbow-delimiters rainbow-mode smartparens virtualenvwrapper
                  web-mode window-numbering workgroups2 yasnippet)
  "Editor Package To Be Installed At Startup")

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
