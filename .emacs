(server-start)

;;; Highlight the current line being edited

;;;(global-hl-line-mode 1)

;;; No more tabs

(setq-default indent-tabs-mode nil)

;;; Stop making backups outside of a specific folder

(setq make-backup-files t)
(setq version-control t)
(setq backup-directory-alist (quote ((".*" . "~/.backups"))))

;; Hello, mutt

(add-to-list 'auto-mode-alist '("/mutt" . mail-mode))
