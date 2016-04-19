;;; company-setup.el --- Company Mode Setup
;;; Commentary:
;;; Code:

(require 'company)

(global-company-mode)

(setq company-tooltip-limit 20)
(setq company-idle-delay 0)
(setq company-echo-delay 0)
(setq company-selection-wrap-around t)

(defvar company-active-map)
(define-key company-active-map (kbd "M-n") nil)
(define-key company-active-map (kbd "M-p") nil)
(define-key company-active-map "\C-n" 'company-select-next)
(define-key company-active-map "\C-p" 'company-select-previous)

(defvar company-backends)
(add-to-list 'company-backends 'company-go)

(company-quickhelp-mode 1)
(defvar company-quickhelp-delay)
(setq company-quickhelp-delay nil)

(provide 'company-setup)
;;; company-setup.el ends here
