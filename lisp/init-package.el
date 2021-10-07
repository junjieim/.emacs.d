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
  :ensure t
  :config
  (progn
    (evil-mode)
    ;; (global-evil-leader-mode)
    ;; (setq evil-leader/in-all-states t)
    ;; (evil-leader/set-leader "SPC")
  ))

(use-package evil-nerd-commenter
  :ensure t)

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

(use-package magit
  :ensure t)

(provide 'init-package)
;;; init-package.el ends here.
