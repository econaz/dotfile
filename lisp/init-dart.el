;;; init-dart.el --- -*- lexical-binding:t -*-

;;; Commentary:
;; 


;;; Code:
;; (setq package-selected-packages
;;   '(dart-mode lsp-mode lsp-dart lsp-treemacs flycheck
;;     ;; Optional packages
;;     lsp-ui))


(use-package lsp-dart
  :ensure t
  :hook (dart-mode . lsp)
  :custom
  (lsp-dart-complete-function-calls t)
  )

(provide 'init-dart)
;;; init-dart.el ends here
