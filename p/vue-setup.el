;;; Package --- Vue Setup
;;; Commentary:
;;; Code:
(define-derived-mode vue-mode
  web-mode "vue"
  "Adjust web-mode to accommodate react-mode."
  (web-mode-set-content-type "vue")
  (setq-local web-mode-enable-auto-quoting nil))

(provide 'vue-setup)
;;; vue-setup ends here
