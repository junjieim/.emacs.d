;;; init-evil.el --- evil config. -*- coding: utf-8; lexical-binding: t; -*-

(use-package evil
  :init
  (setq evil-want-keybinding nil)
  :config
  (setq evil-move-cursor-back nil) ;; move the cursor back when exiting insert mode 
  (evil-mode 1))

;; normal state keymaps
(define-key evil-normal-state-map "i" 'evil-previous-line)
(define-key evil-normal-state-map "j" 'evil-backward-char)
(define-key evil-normal-state-map "k" 'evil-next-line)
(define-key evil-normal-state-map "h" 'evil-insert)
(define-key evil-normal-state-map "gj" 'evil-beginning-of-line)
(define-key evil-normal-state-map "gl" 'evil-end-of-line)

;; visual state keymaps
(define-key evil-visual-state-map "i" 'evil-previous-line)
(define-key evil-visual-state-map "j" 'evil-backward-char)
(define-key evil-visual-state-map "k" 'evil-next-line)
(define-key evil-visual-state-map "h" 'evil-insert)

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

(use-package evil-escape
  :config
  (setq-default evil-escape-delay 0.2)
  (setq-default evil-escape-key-sequence "jl")
  (evil-escape-mode 1)
  )

(use-package evil-nerd-commenter
  :ensure t)

(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

(provide 'init-evil)
;;; init-evil.el ends here
