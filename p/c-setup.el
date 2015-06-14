;;; c-setup.el --- C Setup
;;; Commentary:
;;; Code:
(setq-default c-default-style "linux"
              c-basic-offset 4
              c-indent-tabs-mode t)
(defun my-c-mode-hook ()
  (c-set-offset 'substatement-open 0)
  (c-set-offset 'case-label '+)
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'c++-mode-hook 'my-c-mode-hook)

(provide 'c-setup)
;;; c-setup.el ends here
