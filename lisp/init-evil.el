;;; init-evil.el --- evil config. -*- coding: utf-8; lexical-binding: t; -*-

(use-package evil
  :init
  (setq evil-want-keybinding nil)
  :config
  (setq evil-move-cursor-back nil) ;; move the cursor back when exiting insert mode 
  ;; normal state keymaps
  (define-key evil-normal-state-map "gh" 'evil-beginning-of-line)
  (define-key evil-normal-state-map "gl" 'evil-end-of-line)
  (evil-mode 1)
  )

(evil-set-leader '(normal visual) (kbd "SPC"))
(evil-define-key '(normal visual) 'global
  (kbd "<leader>ff") 'counsel-find-file)
(evil-define-key '(normal visual) 'global
  (kbd "<leader>g") 'magit)
(evil-define-key '(normal visual) 'global
  (kbd "<leader>j") 'evil-avy-goto-char-timer)

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package evil-escape
  :config
  (setq-default evil-escape-delay 0.2)
  (setq-default evil-escape-key-sequence "jk")
  (evil-escape-mode 1)
  )

(use-package evil-nerd-commenter
  :ensure t)

(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

(provide 'init-evil)
;;; init-evil.el ends here
