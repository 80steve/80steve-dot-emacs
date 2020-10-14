;;; Package --- React Setup
;;; Commentary:
;;; Code:
(defvar company-backends)

(define-derived-mode react-mode
  web-mode "react"
  "Adjust web-mode to accommodate react-mode."
  (emmet-mode 0)
  (setq-local emmet-expand-jsx-className? t)
  (yas-activate-extra-mode 'js2-mode)
  (web-mode-set-content-type "jsx")
  (setq-local web-mode-enable-auto-quoting nil))

(provide 'react-setup)
;;; react-setup ends here
