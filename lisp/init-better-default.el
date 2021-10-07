;;; init-better-default.el --- Basic Emacs config -*- coding: utf-8; lexical-binding: t; -*-

;; Start up
(setq inhibit-startup-message t
      initial-scratch-message ";; Have a good day!\n\n")

;; Frame components
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Text area
(global-linum-mode 1)
(blink-cursor-mode 0)

;; File
(setq make-backup-files nil)
(global-auto-revert-mode t)
(setq auto-save-default nil)

;; Files encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8-unix)

;; Warning
(setq ring-bell-function 'ignore)
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-better-default)
;;; init-better-default.el ends here
