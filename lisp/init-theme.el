;;; init-theme.el --- theme config. -*- coding: utf-8; lexical-binding: t; -*-

(use-package doom-themes
  :init
  (load-theme 'doom-one-light t)
  :config
  (doom-themes-org-config))

(provide 'init-theme)
;;; init-theme.el ends here.
