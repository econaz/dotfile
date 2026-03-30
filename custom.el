(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))

(load custom-file 'no-error 'no-message)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(avy company consult-yasnippet doom-modeline doom-themes
         embark-consult evil-collection flycheck gcmh lsp-ui
         marginalia orderless shackle vertico yasnippet-snippets)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
