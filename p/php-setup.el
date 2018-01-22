;;; package --- PHP Setup
;;; Commentary:
;;; Code:
(require 'php-mode)

;; try shutting off the warning from php-indent
(defvar php-mode-warn-if-mumamo-off)
(setq php-mode-warn-if-mumamo-off nil)

(defun clean-php-mode ()
  (setq c-basic-offset 4))
(add-hook 'php-mode-hook 'clean-php-mode)

(defun phplin-this-file ()
  (interactive)
  (compile (format "php -l %s" (buffer-file-name))))
(add-hook 'php-mode-hook
          '(lambda ()
             (local-set-key [f8] 'phplint-this-file)))


(add-hook 'php-mode-hook
          '(lambda ()
             (local-set-key (kbd "RET") 'newline-and-indent)))

(provide 'php-setup)
;;; php-setup ends here
