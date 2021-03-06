;;; Package --- Origami Setup
;;; Commentary:
;;; Code:
(use-package origami
  :defer 5
  :config
  (define-key origami-mode-map (kbd "C-c TAB") 'origami-toggle-node)
  (define-key origami-mode-map (kbd "C-c o TAB") 'origami-show-only-node)
  (define-key origami-mode-map (kbd "C-c a TAB") 'origami-open-all-nodes)
  )

(provide 'origami-setup)
;;; origami-setup.el ends here
