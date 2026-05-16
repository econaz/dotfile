;;; init-dart.el --- -*- lexical-binding:t -*-

;;; Commentary:
;; 


;;; Code:
;; (setq package-selected-packages
;;   '(dart-mode lsp-mode lsp-dart lsp-treemacs flycheck
;;     ;; Optional packages
;;     lsp-ui))

(use-package dart-mode
  :defines (projectile-project-root-files-bottom-up)
  :config
  (with-eval-after-load "projectile"
    (add-to-list 'projectile-project-root-files-bottom-up "pubspec.yaml")
    (add-to-list 'projectile-project-root-files-bottom-up "BUILD")))

(reformatter-define dart-format
  :program "dart"
  :args '("format"))

(with-eval-after-load "dart-mode"
  (define-key dart-mode-map (kbd "C-c C-o") 'dart-format-buffer))

(use-package flutter
  :ensure t
  :after dart-mode
  :custom
  (flutter-sdk-path "~/Flutter/flutter/"))

(use-package lsp-dart
  :ensure t
  :init
  (setq lsp-dart-sdk-dir "~/Flutter/flutter/bin/cache/dart-sdk/")
  :hook (dart-mode . lsp)
  :custom
  (lsp-dart-complete-function-calls t)
  )

(provide 'init-dart)
;;; init-dart.el ends here
