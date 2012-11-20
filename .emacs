;;; Highlight the current line being edited

;;;(global-hl-line-mode 1)

;;; No more tabs

(setq-default indent-tabs-mode nil)

;;; Visual Line MODE!

(setq-default visual-line-mode t)

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
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(rst-adornment-faces-alist (quote ((t . font-lock-keyword-face) (nil . font-lock-keyword-face) (1 . rst-level-6-face) (2 . rst-level-6-face) (3 . rst-level-6-face) (4 . rst-level-6-face) (5 . rst-level-6-face) (6 . rst-level-6-face) (1 . rst-level-6-face) (2 . rst-level-6-face) (3 . rst-level-6-face) (4 . rst-level-6-face) (5 . rst-level-6-face) (6 . rst-level-6-face)))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(setq vm-imap-account-alist
       '(
        ("imap-ssl:imap.gmail.com:993:*:login:[redacted]:*" "Gmail")
        )
 )

(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials '(("smtp.gmail.com" 587 "[redacted]" nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)

