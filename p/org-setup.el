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
                             (concat org-directory "/jobmaze.org")))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline (concat org-directory "/personal.org") "Tasks") "* TODO %?\n %i\n")))

(provide 'org-setup)
;;; org-setup ends here
