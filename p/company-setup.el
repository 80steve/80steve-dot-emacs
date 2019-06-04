;;; Package --- Company Mode Setup
;;; Commentary:
;;; Code:

(require 'company)

(global-company-mode)

(setq company-tooltip-limit 20)
(setq company-idle-delay .3)
(setq company-echo-delay 0)
(setq company-selection-wrap-around t)
(setq company-dabbrev-downcase nil)
(setq company-minimum-prefix-length 2)

(defvar company-active-map)
(define-key company-active-map (kbd "M-n") nil)
(define-key company-active-map (kbd "M-p") nil)
(define-key company-active-map "\C-n" 'company-select-next)
(define-key company-active-map "\C-p" 'company-select-previous)

(company-quickhelp-mode 1)
(defvar company-quickhelp-delay)
(setq company-quickhelp-delay nil)

(global-unset-key (kbd "C-M-i"))
(global-set-key (kbd "C-M-i") 'company-complete)

(provide 'company-setup)
;;; company-setup.el ends here
