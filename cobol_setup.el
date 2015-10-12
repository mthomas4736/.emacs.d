(require 'cobol-mode)

;; set cobol file types.
(add-to-list 'auto-mode-alist '("\\.cob\\'" . cobol-mode))

;; set tab width
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)

;; turn on line mode for python files
(defun my-cobol-mode-hook () 
  (linum-mode 1)) 
(add-hook 'cobol-mode-hook 'my-cobol-mode-hook)
