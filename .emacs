;;; Highlight the current line being edited

(global-hl-line-mode 1)

;;; No more tabs

(setq-default indent-tabs-mode nil)

;;; Stop making backups outside of a specific folder

(setq make-backup-files t)
(setq version-control t)
(setq backup-directory-alist (quote ((".*" . "~/.backups"))))

;;; Definitely need line numbers

(line-number-mode 1)

;;; ReStructured Text stuff

(load-library "rst")
(add-hook 'text-mode-hook 'rst-text-mode-bindings)
(add-hook 'text-mode-hook 'rst-set-paragraph-separation)
(add-to-list 'auto-mode-alist '("\\.rst$" . rst-mode) )