;;; init-company.el --- company config. -*- coding: utf-8; lexical-binding: t; -*-

(use-package company
  :init (global-company-mode)
  ;; :bind (:map company-active-map
  ;;        ("C-n" . company-select-next)
  ;;        ("C-p" . company-select-previous))
  ;; :config
  ;; (setq company-idle-delay 0.3)
  )

(provide 'init-company)
;;; init-company.el ends here.
