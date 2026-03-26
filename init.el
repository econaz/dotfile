;;; init.el --- The necessary settings -*- lexical-binding: t -*-



;;; Commentary:
;; 

;;; Code:
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lsp-bridge")


(require 'init-packages)

(require 'init-base)

(require 'init-ui)

(require 'init-lsp)

(require 'init-shell)

(require 'init-minibuffer)

(require 'init-dev)

(require 'init-tools)

(require 'init-yasnippet)

(require 'init-evil)
;(require 'init-elisp)

;(require 'init-lspbridge)

(provide 'init)
;;; init.el ends here
