;;; init-theme.el --- theme config. -*- coding: utf-8; lexical-binding: t; -*-

(use-package doom-themes
  :init
  (load-theme 'doom-one-light t)
  :config
  (doom-themes-org-config))

(use-package all-the-icons)

(use-package doom-modeline
  :config
  (progn
    (setq doom-modeline-icon nil)
    (setq doom-modeline-unicode-fallback t)
    )
  :hook (after-init . doom-modeline-mode)
  )

(provide 'init-theme)
;;; init-theme.el ends here.
