(require 'org)

;(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(setq org-log-done t)
(setq org-hide-leading-stars 1)
(setq org-todo-keywords
      '((sequence "TODO(t)" "STARTED(s)" "PENDING(p)" "|" "DONE(d)")
        (sequence "REPORT(r)" "BUG(b)" "KNOWN(k)" "|" "FIXED(f)")
        (sequence "|" "CANCELED(c)")))

(setq org-agenda-files '("~/Desktop/tasks.org"))

(provide 'org-setup)
