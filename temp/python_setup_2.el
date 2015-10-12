;; setup python environment using old .emacs stuff

(require 'python)

;; turn on autocomplete mode
(add-hook 'python-mode-hook 'auto-complete-mode)
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20140414.2324")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20140414.2324/dict")
(ac-config-default)


;; turn on line mode for python files
(defun my-python-mode-hook () 
  (linum-mode 1)) 
(add-hook 'python-mode-hook 'my-python-mode-hook)


;; set python file types
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;; python intrepreter inside emacs
(setq python-shell-interpreter "c:/Python27/pythonw.exe")

;; for the pretty stripes
(require 'stripe-buffer)
(add-hook 'python-mode-hook 'turn-on-stripe-buffer-mode)

;; set tab width
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)

;; jedi setup
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(setq jedi:setup-keys t)

;; Type:
;;     M-x el-get-install RET jedi RET
;;     M-x jedi:install-server RET
;; Then open Python file.

;; yasnippet
(add-to-list 'load-path "~/.emacs.d/elpa/yasnippet-20140427")
(require 'yasnippet)
(yas-global-mode 1)

;; pydoc
(require 'pydoc-info)

;; virtualenvsetup
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells) ;; if you want interactive shell support
(venv-initialize-eshell) ;; if you want eshell support
(setq venv-location "c:/users/kruft/.virtualenvs/")


;; moar virtualevn
;; new function venv-py-choose
;;   - determine multiple Python versions
;;   - determine virtualenv
;; bind to run-venv 
;; rope setup

;; pymacs setup
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
;;(eval-after-load "pymacs"
;;  '(add-to-list 'pymacs-load-path YOUR-PYMACS-DIRECTORY"))


;; flycheck
;; (add-hook 'after-init-hook #'global-flycheck-mode)
