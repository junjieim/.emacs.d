;;; init.el -*- coding: utf-8; lexical-binding: t; -*-

;; early init
(add-to-list 'load-path
	     (expand-file-name "lisp" user-emacs-directory))


;; Bootstrap config

(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))

(require 'init-better-default)
(require 'init-font)
(require 'init-package)
(require 'init-org)

;; Variables configured via the interactive 'customize' interface
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)
;;; init.el ends here
