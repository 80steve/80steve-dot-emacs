;;; Package --- Ace Jump Setup
;;; Commentary:
;;; Code:

(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

(define-key global-map (kbd "M-p") 'ace-window)

(use-package ace-window-mode
  :defer t
  )

(provide 'ace-jump-setup)
;;; ace-jump-setup.el ends here
