;;; init-evil.el --- evil config. -*- coding: utf-8; lexical-binding: t; -*-

(use-package evil
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-nerd-commenter
  :ensure t)

(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(provide 'init-evil)
;;; init-evil.el ends here
