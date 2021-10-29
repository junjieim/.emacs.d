;;; init-evil.el --- evil config. -*- coding: utf-8; lexical-binding: t; -*-

(use-package evil
  :init
  (setq evil-want-keybinding nil)
  :config
  (setq evil-move-cursor-back nil) ;; move the cursor back when exiting insert mode 
  ;; normal state keymaps
  ;; (define-key evil-normal-state-map "gh" 'evil-beginning-of-line)
  ;; (define-key evil-normal-state-map "gl" 'evil-end-of-line)
  (evil-set-leader '(normal visual) (kbd "SPC"))
  (evil-define-key '(normal visual) 'global
    "gh" 'evil-beginning-of-line
    "gl" 'evil-end-of-line
    ;; file
    (kbd "<leader>ff") 'counsel-find-file
    ;; git
    (kbd "<leader>g") 'magit
    ;; avy
    (kbd "<leader>j") 'evil-avy-goto-char-timer
    ;; buffer
    (kbd "<leader>bs") 'ivy-switch-buffer
    (kbd "<leader>bj") 'previous-buffer
    (kbd "<leader>bk") 'next-buffer
    ;; window
    (kbd "<leader>w1") 'delete-other-windows
    (kbd "<leader>w2") 'split-window-below
    (kbd "<leader>w3") 'split-window-right
    )
  (evil-mode 1)
  )

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
