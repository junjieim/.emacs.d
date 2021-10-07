;;; init-org.el --- Org mode configuration for GTD and note taking. -*- coding: utf-8; lexical-binding: t; -*-

(add-hook 'org-mode-hook
	  (lambda()
	    (setq truncate-lines nil)))

;; GTD setting
(setq org-use-fast-todo-selection t)
(setq org-todo-keywords '((sequence
			   "TODO(t)"
			   "DOING(i)"
			   "|"
			   "DONE(d@)"
			   "ABORTED(a@)")))
(setq org-todo-keyword-faces '(("TODO" . "dark orange")
				("DOING" . "red")
				("DONE" . "deep sky blue")
				("ABORTED" . "dark grey")))

;; capture
(global-set-key (kbd "C-c c") 'org-capture)
(setq org-default-notes-file "~/Documents/orgs/inbox.org")

(provide 'init-org)
;;; init-org.el ends here.
