;; prevent M-x to write in this file
(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

;; this way, emacs recognized bash alias
(setq shell-file-name "bash")
(setq shell-command-switch "-ic")

;; look and feel
(setq inhibit-startup-message t) ;; disables startup page
(menu-bar-mode 0) ;; disables menu bar mode
(tool-bar-mode 0) ;; disables tool bar mode
(scroll-bar-mode 0) ;; disables scroll bar mode
(column-number-mode 1)
(show-paren-mode 1)
;;(set-frame-font "Inconsolata-13")
(global-display-line-numbers-mode) ;; shows line numbers
(toggle-frame-maximized)
(setq backup-directory-alist `(("." . "~/.emacs.d/backups"))) ;; saves garbage backups in .saves folder
(setq truncate-lines nil)
(setq create-lockfiles nil) ;; prevent emacs for creating tem files starting with hashta


;; add melpa repo
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


;; install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


;; theme
;; (use-package vscode-dark-plus-theme
;;   :ensure t
;;   :config
;;   (load-theme 'vscode-dark-plus t))

(use-package gruber-darker-theme
  :ensure t
  :config
  (load-theme 'gruber-darker t))

;; shortcuts
(windmove-default-keybindings) ;; Shift + arrows to change between windows


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



;; auto-complete
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

;; multiple-cursors
(use-package multiple-cursors
  :ensure t
  :config
  (global-set-key (kbd "C-M-c") 'mc/edit-lines) ;; mark lines and then edit multiple lines
  (global-set-key (kbd "C-M-j") 'mc/mark-all-dwim) ;; both marked and unmarked region. multiple presses.
  (global-set-key (kbd "C-M-/") 'mc/mark-all-like-this) ; select fixt. finds all occurrences.
  (global-set-key (kbd "C-M-,") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-M-.") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-M-<") 'mc/skip-to-previous-like-this)
  (global-set-key (kbd "C-M->") 'mc/skip-to-next-like-this))



;; treemacs
(use-package treemacs :ensure t)


;; move-text
(use-package move-text :ensure)
(move-text-default-bindings)
(defun indent-region-advice (&rest ignored)
  (let ((deactivate deactivate-mark))
    (if (region-active-p)
	(indent-region (region-beginning) (region-end))
      (indent-region (line-beginning-position) (line-end-position)))
    (setq deactivate-mark deactivate)))

(advice-add 'move-text-up :after 'indent-region-advice)
(advice-add 'move-text-down :after 'indent-region-advice)


;; magit
(use-package magit :ensure t)

;; markdown mode
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

;; python mode
(add-hook 'python-mode-hook
      (lambda ()
	(setq indent-tabs-mode t)
	(setq tab-width 4)
	(setq python-indent-offset 4))
      (tabify (point-min)(point-max)) ;; comment this if you want to use spaces instead of tabs in python
      )


;; org-mode
(advice-add 'org-archive-subtree :after #'org-save-all-org-buffers)

(setq org-todo-keywords
      '(
	(sequence "TODO(t)"  "STARTED(s)" "WAITING(w)" "|" "DONE(d)" "CANCELED(c)")
	))

(setq org-todo-keyword-faces
      '(("TODO" . (:foreground "IndianRed" :weight bold))
	("STARTED" . (:foreground "coral" :weight bold))
	("WAITING" . (:foreground "GoldenRod" :weight bold))
	("DONE" . (:foreground "LimeGreen" :weight bold))
	))
