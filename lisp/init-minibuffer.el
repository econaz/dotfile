;;; init-minibuffer.el --- Config for minibuffer completion -*- lexical-binding: t -*-

;;; Commentary:
;;

;;; Code:


(use-package embark
  :ensure t
  :bind (:map minibuffer-local-map
         ("M-o"     . embark-act)
         ("C-c C-c" . embark-export)
         ("C-c C-o" . embark-collect)))


;; Consult users will also want the embark-consult package.
(use-package embark-consult
  :ensure t
  :defer t)


(provide 'init-minibuffer)
;;; init-minibuffer.el ends here
