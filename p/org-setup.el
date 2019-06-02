;;; Package --- OrgMode Setup
;;; Commentary:
;;; Code:
(use-package org
  :defer t
  :config
  (define-key global-map "\C-ca" 'org-agenda)
  (define-key global-map "\C-cr" 'org-capture)

  (setq org-log-done t)
  (setq org-hide-leading-stars 1)
  (setq org-todo-keywords
        '((sequence "TODO(t)" "STARTED(s)" "PENDING(p)" "|" "DONE(d)")
          (sequence "REPORT(r)" "BUG(b)" "KNOWN(k)" "|" "FIXED(f)")
          (sequence "|" "CANCELED(c)")))

  (setq org-directory "~/Documents/OrgMode/")

  (setq org-agenda-files (list (concat org-directory "personal.org")
                               (concat org-directory "work.org")))

  (defvar org-capture-templates)
  (setq org-capture-templates
        '(("p" "Personal Todo" entry (file+headline (lambda () (concat org-directory "personal.org")) "Tasks") "* TODO %?\n %i\n")
          ("w" "Work Todo" entry (file+headline (lambda () (concat org-directory "work.org")) "Tasks") "* TODO %?\n %i\n")
          ("n" "Notes" entry (file+headline (lambda () (concat org-directory "notes.org")) "Notes") "* %^{NOTES} \n%<%Y-%m-%d %H:%M>\n %?\n %i\n")
          ))
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  (org-super-agenda-mode t)
  )

(use-package org-bullets
  :defer t
  )

(use-package org-super-agenda
  :defer t
  :config
  (setq org-super-agenda-groups
        '(
          (:name "Important"
                 :tag "important"
                 :priority "A")
          (:name "Todo"
                 :time-grid t
                 :todo ("TODO" "STARTED"))
          (:todo "PENDING" :order 8)
          (:todo ("REPORT" "BUG" "KNOWN") :order 9)
          (:todo ("DONE" "FIXED") :order 10)
          (:todo "CANCELED" :order 11)
          ))
  )

(provide 'org-setup)
;;; org-setup ends here
