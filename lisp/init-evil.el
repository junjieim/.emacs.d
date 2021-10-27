;;; init-evil.el --- evil config. -*- coding: utf-8; lexical-binding: t; -*-

(use-package evil
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(define-key evil-normal-state-map "i" 'evil-previous-line)
(define-key evil-normal-state-map "j" 'evil-backward-char)
(define-key evil-normal-state-map "k" 'evil-next-line)
(define-key evil-normal-state-map "h" 'evil-insert)

(defun my-hjkl-retation (_mode mode-keymaps &rest _rest)
  (evil-collection-translate-key 'normal mode-keymaps
    "k" "j"
    "i" "k"
    "j" "h"
    "h" "i"))

(use-package evil-collection
  :after evil
  :config
  (add-hook 'evil-collection-setup-hook #'my-hjkl-retation)
  (evil-collection-init))

(use-package evil-nerd-commenter
  :ensure t)

(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

(provide 'init-evil)
;;; init-evil.el ends here
