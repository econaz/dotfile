


(require 'yasnippet)
(yas-global-mode 1)

(require 'lsp-bridge)
(global-lsp-bridge-mode)
(setq lsp-bridge-default-mode-hooks '(c-mode-hook c++-mode-hook cmake-mode-hook bash-mode-hook))




(provide 'init-lspbridge)
