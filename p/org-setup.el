(setq org-log-done 'time)
(setq org-hide-leading-stars 1)
(setq org-todo-keywords
      '((sequence "TODO(t)" "STARTED(s)" "PENDING(p)" "|" "DONE(d)")
        (sequence "REPORT(r)" "BUG(b)" "KNOWN(k)" "|" "FIXED(f)")
        (sequence "|" "CANCELED(c)")))

(global-set-key "\C-ca" 'org-agenda)

(provide 'org-setup)
