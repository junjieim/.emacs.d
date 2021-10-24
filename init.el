;;; init.el -*- coding: utf-8; lexical-binding: t; -*-

;;; early init
(add-to-list 'load-path
	     (expand-file-name "lisp" user-emacs-directory))

;; easy to open init file
(defun open-init-file ()
  (interactive)
  (find-file (expand-file-name "init.el" user-emacs-directory)))


;;; Bootstrap config

(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))

;; emacs self config
(require 'init-better-default)
(require 'init-font)

;; Initialize package repos
(require 'package)
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("org" . "https://orgmode.org/elpa/")
        ("melpa" . "https://melpa.org/packages/")
        ("melpa-stable" . "http://stable.melpa.org/packages/"))
      package-archive-priorities '(("melpa-stable" . 1)))
(package-initialize)

;; `use-package` installation before other package init
(when (not package-archive-contents)
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; config package separatly
(require 'init-org)
(require 'init-evil)
(require 'init-ivy)
(require 'init-magit)
(require 'init-theme)

;; Variables configured via the interactive 'customize' interface
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
;;; init.el ends here
