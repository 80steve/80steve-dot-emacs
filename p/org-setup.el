;;; package --- OrgMode Setup
;;; Commentary:
;;; Code:
(require 'org)

;(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cr" 'org-capture)

(setq org-log-done t)
(setq org-hide-leading-stars 1)
(setq org-todo-keywords
      '((sequence "TODO(t)" "STARTED(s)" "PENDING(p)" "|" "DONE(d)")
        (sequence "REPORT(r)" "BUG(b)" "KNOWN(k)" "|" "FIXED(f)")
        (sequence "|" "CANCELED(c)")))

(setq org-directory "~/Documents/OrgMode/")

(setq org-agenda-files (list (concat org-directory "/personal.org")
                             (concat org-directory "/work.org")))

(defvar org-capture-templates)
(setq org-capture-templates
      '(("p" "Personal Todo" entry (file+headline (concat org-directory "/personal.org") "Tasks") "* TODO %?\n %i\n")
        ("w" "Work Todo" entry (file+headline (concat org-directory "/work.org") "Tasks") "* TODO %?\n %i\n")
        ("n" "Notes" entry (file+headline (concat org-directory "/notes.org") "Notes") "* %^{NOTES} \n%<%Y-%m-%d %H:%M>\n %?\n %i\n")
        ))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(provide 'org-setup)
;;; org-setup ends here
