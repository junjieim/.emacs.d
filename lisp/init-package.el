;;; init-package.el --- Packages config. -*- coding: utf-8; lexical-binding: t; -*-

;; Initialize package repos
(require 'package)
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("org" . "https://orgmode.org/elpa/")
        ("melpa" . "https://melpa.org/packages/")
        ("melpa-stable" . "http://stable.melpa.org/packages/"))
      package-archive-priorities '(("melpa-stable" . 1)))
(package-initialize)

;; Use `use-package` to simplify the config file
(when (not package-archive-contents)
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; Packages config
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

(use-package magit)

(use-package ivy
  :diminish ivy-mode
  :hook (after-init . ivy-mode))

(use-package doom-themes
  :init
  (load-theme 'doom-one-light t)
  :config
  (doom-themes-org-config))

(provide 'init-package)
;;; init-package.el ends here.
