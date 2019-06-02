;;; Package --- Multiple Cursors Setup
;;; Commentary:
;;; Code:

(use-package multiple-cursors
  :defer t)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(provide 'mc-setup)
;;; mc-setup.el ends here
