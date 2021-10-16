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
  :config
  (progn
    (evil-mode)
    ;; (global-evil-leader-mode)
    ;; (setq evil-leader/in-all-states t)
    ;; (evil-leader/set-leader [SPC])
  ))

(use-package evil-nerd-commenter
  :ensure t)

(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

(use-package magit)

(use-package ivy
  :diminish ivy-mode
  :hook (after-init . ivy-mode))

(use-package doom-themes
  :init
  (load-theme 'doom-one-light t)
  :config
  (doom-themes-org-config))

(use-package doom-modeline
  :hook (after-init . doom-modeline-mode)
  :custom
  (doom-modeline-irc nil)
  (doom-modeline-mu4e nil)
  (doom-modeline-gnus nil)
  (doom-modeline-github nil)
  (doom-modeline-persp-name nil)
  (doom-modeline-unicode-fallback t)
  (doom-modeline-enable-word-count nil))

(provide 'init-package)
;;; init-package.el ends here.
