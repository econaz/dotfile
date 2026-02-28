(use-package flycheck
  :ensure t
  :hook (prog-mode . flycheck-mode)
  :bind
  ("C-c [" . 'flycheck-previous-error)
  ("C-c ]" . 'flycheck-next-error)
  :custom
  (flycheck-temp-prefix ".flycheck")
  (flycheck-check-syntax-automatically '(save mode-enabled))
  (flycheck-emacs-lisp-load-path 'inherit)
  (flycheck-indication-mode 'right-fringe))





(provide 'init-dev)
