(add-to-list 'load-path "~/.emacs.d/")

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'twittering-mode)
(setq twittering-use-master-password t)
(require 'ddg)
(require 'ddg-search)
(require 'ddg-mode)
