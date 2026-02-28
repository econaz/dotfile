(use-package avy
  :ensure t
  :hook (after-init . avy-setup-default)
  :bind (("C-c C-g" . avy-goto-line)
         ("C-c C-f" . avy-goto-char-timer))
  :config
  (defun avy-action-embark-dwim (pt)
    (save-excursion
      (goto-char pt)
      (embark-dwim))
    t)
  :custom
  (avy-background t)
  (avy-all-windows nil)
  (avy-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l ?q ?w ?e ?r ?u ?i ?o ?p))
  ;; overlay is used during isearch, `pre' style makes avy keys evident.
  (avy-styles-alist '((avy-isearch . pre)))
  (avy-dispatch-alist '((?y . avy-action-copy)
                        (?. . avy-action-embark-dwim))))


(use-package gcmh
  :ensure t
  :hook (after-init . gcmh-mode)
  :custom
  (gcmh-idle-delay 10)
  (gcmh-high-cons-threshold #x6400000))

(provide 'init-tools)
