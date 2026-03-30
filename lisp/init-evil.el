;;; init-evil.el --- evil.el evil config -*- lexical-binding:t -*-




;;; Commentary:
;; 

;;; Code:

(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  (setq evil-disable-insert-state-bindings t)
  (setq evil-want-Y-yank-to-eol t)
  (setq evil-want-keybinding nil)
  :hook (after-init . evil-mode)
  )

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init)
  )

(provide 'init-evil)

;;; init-evil.el ends here
