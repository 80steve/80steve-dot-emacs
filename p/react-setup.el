;;; package --- Reactjs Setup
;;; Commentary:
;;; Code:
(defun react-mode-setup ()
  "Adjust web-mode to accommodate react-mode."
  (emmet-mode 0)
  (tern-mode 1)
  (setq-local emmet-expand-jsx-className? t)
  (yas-activate-extra-mode 'js-mode)
  (web-mode-set-content-type "jsx")
  (setq-local web-mode-enable-auto-quoting nil))


(require 'web-mode)

(define-derived-mode react-mode web-mode "react")
(setq auto-mode-alist (cons '("\\.jsx$" . react-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.react.js$" . react-mode) auto-mode-alist))
(add-to-list 'magic-mode-alist '("/\\*\\* @jsx React\\.DOM \\*/" . react-mode))
(add-to-list 'magic-mode-alist '("^import React" . react-mode))

(add-hook 'react-mode-hook 'react-mode-setup)

(provide 'react-setup)
;;; react-setup ends here
