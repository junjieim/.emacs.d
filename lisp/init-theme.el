;;; init-theme.el --- theme config. -*- coding: utf-8; lexical-binding: t; -*-

(use-package doom-themes
  :init
  (load-theme 'doom-one-light t)
  :config
  (progn
    (setq doom-themes-enable-bold t
	doom-themes-enable-italic t)
    (doom-themes-org-config)
    )
  )

(use-package all-the-icons)

(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :config
  (progn
    (setq doom-modeline-icon nil)
    (setq doom-modeline-unicode-fallback t)
    )
  )

(provide 'init-theme)
;;; init-theme.el ends here.
