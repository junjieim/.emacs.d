;;; init-god-mode.el --- god-mode config. -*- coding: utf-8; lexical-binding: t; -*-

(defun my-god-mode-update-cursor-type ()
  (setq cursor-type (if (or god-local-mode buffer-read-only) 'box 'bar)))

(use-package god-mode
  :config
  (global-set-key (kbd "<escape>") #'god-local-mode)
  (define-key god-local-mode-map (kbd "z") #'repeat)
  (add-hook 'post-command-hook #'my-god-mode-update-cursor-type)
  (god-mode)
  )

(provide 'init-god-mode)
;;; init-god-mode.el ends here
