;;; init-base.el --- init-base.el -*- lexical-binding:t -*-



;;; Commentary:
;; 

;;; Code:

(setq make-backup-files nil)

(setq load-prefer-newer t)

(setq-default indent-tabs-mode nil)

(global-display-line-numbers-mode 1)

(tool-bar-mode -1)

(menu-bar-mode -1)

(set-frame-font "Jetbrains Mono Nerd Font 20" nil t)

(add-hook 'prog-mode-hook #'show-paren-mode)



(use-package minibuffer
  :ensure nil
  :bind (:map minibuffer-local-map
         ([escape] . abort-recursive-edit)
         :map minibuffer-local-ns-map
         ([escape] . abort-recursive-edit)
         :map minibuffer-local-completion-map
         ([escape] . abort-recursive-edit)
         :map minibuffer-local-must-match-map
         ([escape] . abort-recursive-edit)
         :map minibuffer-local-isearch-map
         ([escape] . abort-recursive-edit))
  :custom
  ;; Default minibuffer is fine-tuned since Emacs 29
  (completion-auto-help t)
  (completion-show-help nil)
  (completion-auto-select nil)
  (completion-cycle-threshold nil)
  (enable-recursive-minibuffers t)
  (minibuffer-depth-indicate-mode t)
  ;; shorten " (default %s)" => " [%s]"
  (minibuffer-default-prompt-format " [%s]")
  (minibuffer-electric-default-mode t)
  ;; Don't insert completion at point into minibuffer
  (minibuffer-completion-auto-choose nil)
  ;; One frame one minibuffer.
  (minibuffer-follows-selected-frame nil)
  ;; Ignore cases when complete
  (completion-ignore-case t)
  (read-buffer-completion-ignore-case t)
  (read-file-name-completion-ignore-case t)
  ;; `selectrum', `vertico' and `icomplete' will honoring
  (completion-styles '(basic partial-completion substring flex))
  (completion-category-overrides '((buffer (styles . (flex)))
                                   (file (styles . (substring)))
                                   (eglot-capf (styles . (basic partial-completion)))
                                   (kill-ring (styles . (substring)))
                                   (imenu (styles . (substring)))))
  (completion-pcm-leading-wildcard t)
  ;; vertical view
  (completions-format 'one-column)
  (completions-max-height 13)
  (completions-sort nil)
  (completions-detailed t))

(provide 'init-base)
;;; init-base.el ends here
