;;  I use emacs, which might be thought of as a thermonuclear word processor...Emacs
;;  outshines all other editing software in approximately the same way that the noonday 
;;  sun does the stars. It is not just bigger and brighter; it simply makes everything
;;  else vanish. - Neal Stephenson  


(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("elpy" . "http://jorgenschaefer.github.io/packages/"))
(package-initialize)

; tell me if there's something wrong
(setq debug-on-error t)

;; general setup stuff
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-cursor-color "#ffffff") 
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(load-theme 'cyberpunk t)
(set-default-coding-systems 'utf-8)
(add-to-list 'default-frame-alist '(font . "Consolas-10" ))
(setq ansi-color-for-comint-mode t) 
(setq inhibit-splash-screen t)         ; hide welcome screen
(add-to-list 'load-path "~/.emacs.d/plugins/")
(eval-after-load 'dired '(progn (require 'joseph-single-dired)))

;; using helm for now
(require 'helm)
(require 'helm-config)
(helm-mode 1)
(helm-autoresize-mode 1)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)

;; helm-spaces
;; spaces/jump/helm-jump
(require 'window-jump)
(require 'spaces)
(require 'helm-spaces)
(global-set-key (kbd "C-c s") 'helm-spaces)
(setq helm-spaces-new-space-query nil)


;; testing svg mode line

(require 'svg-mode-line-themes)
(require 'ocodo-slim-svg-mode-line)

;; ido/smex
;;(require 'ido)
;;(ido-mode t)
;;(setq ido-enable-flex-matching t)
;;(setq ido-everywhere t) ;; enable fuzzy matching
;;(ido-ubiquitous t)
;;(ido-vertical-mode 1)
;;(require 'smex)
;;(global-set-key (kbd "M-x") 'smex)

;; emms
(require 'emms-setup)
     (emms-standard)
     (emms-default-players)
(require 'emms-mode-line)
     (emms-mode-line 1)
(require 'emms-streams)
(require 'emms-browser)
(require 'emms-history)
(emms-history-load)
(require 'emms-source-file)
(setq emms-source-file-default-directory "C:/users/kruft/music")

;; testing nXML for XAML mode
(setq auto-mode-alist (cons '("\.xaml$" . nxml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\.xacl$" . nxml-mode) auto-mode-alist))



;; autocomplete
(add-to-list 'load-path "~/.emacs.d/plugins/autocomplete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/autocomplete/ac-dict")
(ac-config-default)

;; enable highlighting
(global-font-lock-mode t)

;; flycheck setup
;;(add-hook 'after-init-hook #'global-flycheck-mode)


;; personal info directory
(add-to-list 'Info-default-directory-list "~/.emacs.d/info")

;;server start
(require 'server)
(load "server")
;;(unless (server-running-p) (server-start))
(defun my-done ()
  (interactive)
  (server-edit)
  (make-frame-invisible nil t))
(global-set-key (kbd "C-x C-c") 'my-done)
(when (and (>= emacs-major-version 23)
           (equal window-system 'w32))
  (defun server-ensure-safe-dir (dir) "Noop" t)) ; Suppress error "directory
                                                 ; ~/.emacs.d/server is unsafe"
                                        ; on windows.
(server-start)

(require 'cl)
(load "~/.emacs.d/python_setup_2.el")
(load "~/.emacs.d/windows_setup.el")
(load "~/.emacs.d/cobol_setup.el")
(load "~/.emacs.d/org.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("5b3bd478f014d1ff16e1f8ee6e13329c274dd33721f14459d0d2d8f6d93f629d" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;el get stuff
;;(add-to-list 'load-path "~/.emacs.d/pluginsx/el-get")
;;
;;(unless (require 'el-get nil 'noerror)
;;  (with-current-buffer
;;      (url-retrieve-synchronously
;;       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
;;    (goto-char (point-max))
;;    (eval-print-last-sexp)))
;;
;;(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
;;(el-get 'sync)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backup"))))
 '(custom-safe-themes (quote ("5b3bd478f014d1ff16e1f8ee6e13329c274dd33721f14459d0d2d8f6d93f629d" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


