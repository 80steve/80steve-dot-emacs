;;; Package --- Ag Setup
;;; Commentary:
;;; Code:

(use-package ag
  :defer 4
  :config
  ;; Mac OSX
  ;; (setq ag-executable "/usr/local/bin/ag")
  ;; Linux
  (setq ag-executable "/usr/bin/ag")
  )

(provide 'ag-setup)
;;; ag-setup.el ends here
