;; prevent M-x to write in this file
(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))


;; look and feel
(setq inhibit-startup-message t) ;; disables startup page
(menu-bar-mode 0) ;; disables menu bar mode
(tool-bar-mode 0) ;; disables tool bar mode
(scroll-bar-mode 0) ;; disables scroll bar mode
(column-number-mode 1)
(show-paren-mode 1)
(set-frame-font "Iosevka-13")
(global-display-line-numbers-mode) ;; shows line numbers
(toggle-frame-maximized)
(setq backup-directory-alist `(("." . "~/.emacs.d/backups"))) ;; saves garbage backups in backups folder
(setq truncate-lines nil) ;; truncate lines
(setq create-lockfiles nil) ;; prevent emacs for creating tem files starting with hashta
(windmove-default-keybindings) ;; Shift + arrows to change between windows

;; add melpa repo
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


;; install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; theme
(use-package gruber-darker-theme
  :ensure t
  :config
  (load-theme 'gruber-darker t))


;; xclip  - copy from Gui to emacs terminal with Ctrl Shift v
(use-package xclip
  :ensure t
  :config
  (xclip-mode 1))

;; helm
(use-package helm
  :ensure t
  :config
  (helm-mode 1)
  (global-set-key (kbd "C-x b") 'helm-buffers-list)
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (global-set-key (kbd "C-s") 'helm-occur))

;; ace-jump-mode to choose a char and jump to it
(use-package ace-jump-mode
  :ensure t
  :config
  (global-set-key (kbd "C-c SPC") 'ace-jump-mode))



;; multiple-cursors
(use-package multiple-cursors
  :ensure t
  :config
  (global-set-key (kbd "C-M-c") 'mc/edit-lines) ;; mark lines and then edit multiple lines
  (global-set-key (kbd "C-M-j") 'mc/mark-all-dwim)) ;; both marked and unmarked region. multiple presses.


;; treemacs
(use-package treemacs :ensure t)

;; magit
(use-package magit :ensure t)

;; which key
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

;; lsp
(use-package lsp-mode
  :ensure t
  :bind (:map lsp-mode-map
	      ("C-c d" . lsp-describe-thing-at-point)
	      ("C-c a" . lsp-execute-code-action))
  :config
  (lsp-enable-which-key-integration t)
  :custom
  (lsp-headerline-breadcrumb-enable nil))

;; company-mode
(use-package company
  :ensure t
  :hook ((emacs-lisp-mode . (lambda ()
			     (setq-local company-backends '(company-elisp))))
	 (emacs-lisp-mode . company-mode))
  :config
  ;(company-keymap--unbind-quick-access company-active-map)
  (setq company-idle-delay 0.1
	company-minimum-prefix-length 1))


;; go mode
(use-package go-mode
  :ensure t
  :hook ((go-mode . lsp-deferred)
	 (go-mode . company-mode))
  :bind (:map go-mode-map
	      ("<f6>" . gofmt))
  :config
  (require 'lsp-go)
  (setq lsp-go-analyses
	'((fieldalignment . t)
	  (nilness        . t)
	  (unusedwrite    . t)
	  (unusedparams   . t)))
  ;; go path
  (add-to-list 'exec-path "~/go/bin")
  (setq gofmt-command "goimports"))

(global-set-key (kbd "<f5>") #'recompile)

;;flycheck
(use-package flycheck
  :ensure t)

;; rust mode
;;(load-file "~/.emacs.d/config/setup-rust.el")
