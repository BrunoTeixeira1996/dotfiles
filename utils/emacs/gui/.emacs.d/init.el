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
(set-frame-font "Monospace-12")
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


;; ;; helm
;; (use-package helm
;;   :ensure t
;;   :config
;;   (helm-mode 1)
;;   (global-set-key (kbd "C-x b") 'helm-buffers-list)
;;   (global-set-key (kbd "M-x") 'helm-M-x)
;;   (global-set-key (kbd "C-x C-f") 'helm-find-files)
;;   (global-set-key (kbd "C-s") 'helm-occur))

(use-package vertico
  :ensure t
  :config
  (vertico-mode))

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
  (global-set-key (kbd "C-M-j") 'mc/mark-all-dwim) ;; both marked and unmarked region. multiple presses.
  (global-set-key (kbd "C-M-/") 'mc/mark-all-like-this) ; select fixt. finds all occurrences.
  (global-set-key (kbd "C-M-,") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-M-.") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-M-<") 'mc/skip-to-previous-like-this)
  (global-set-key (kbd "C-M->") 'mc/skip-to-next-like-this))



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


;; ;; python mode
(add-hook 'python-mode-hook
      (lambda ()
	(setq indent-tabs-mode nil)
	(setq tab-width 4)
	(setq indent-line-function 'insert-tab)))
;;	(setq python-indent-offset 2))
;;

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

(setq org-tag-persistent-alist
      '((:startgroup . nil)
	("ONBOARDING" . ?o)
	("WORK" . ?w)
	("ART2R" . ?r)
	("DEFMEETING" . ?d)
	("PROGRAMMING" .?p)
	(:endgroup . nil)
	)
)


(use-package org-bullets :ensure t)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; markdown mode
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

(put 'upcase-region 'disabled nil)



;; (use-package python
;;   :ensure t
;;   :config
;;   ;; Remove guess indent python message
;;   (setq python-indent-guess-indent-offset-verbose nil))


(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook ((python-mode) . lsp-deferred)
  :demand t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (setq lsp-auto-configure t))

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda () (require 'lsp-pyright)))
  :init (when (executable-find "python3")
	  (setq lsp-pyright-python-executable-cmd "python3")))

(use-package flycheck
  :ensure t)

(use-package lsp-ui
  :ensure t
  :config
  (setq lsp-ui-flycheck-enable t)
  (setq lsp-headerline-breadcrumb-enable nil))


;; Provide drop-down completion.
(use-package company
  :ensure t
  :defer t
  :custom
  (company-dabbrev-other-buffers t)
  (company-dabbrev-code-other-buffers t)
  (company-minimum-prefix-length 2)
  (company-dabbrev-downcase nil)
  (company-dabbrev-ignore-case t)
  (company-idle-delay 0.02)
  (company-global-modes '(not eshell-mode shell-mode))
    :hook ((text-mode . company-mode)
	   (prog-mode . company-mode)))

;; Workaround to use backticks
(global-set-key [S-dead-grave] "`")

;; Whitespace mode
(custom-set-variables
 '(whitespace-style (quote (face tabs spaces trailing space-before-tab
				 newline indentation empty space-after-tab
				 space-mark tab-mark))))



;; untabify so it replaces tabs with spaces on save
(defun untabify-everything ()
  (untabify (point-min) (point-max)))
(defun untabify-everything-on-save ()
  (add-hook 'before-save-hook 'untabify-everything)
  nil)

;; go mode
(use-package go-mode
  :ensure t
  :hook ((go-mode . lsp-deferred)
         (go-mode . company-mode))
  :bind (:map go-mode-map
              ("<f6>" . gofmt))
  :config
  (add-hook 'go-mode-hook 'untabify-everything-on-save)
  (require 'lsp-go)
  (setq lsp-go-analyses
        '((fieldalignment . t)
          (nilness        . t)
          (unusedwrite    . t)
          (unusedparams   . t)))
  ;; go path
  (add-to-list 'exec-path "~/go/bin")
  (setq gofmt-command "goimports"))

(add-hook 'go-mode-hook (lambda () (setq tab-width 4)))
(global-set-key (kbd "<f5>") #'recompile)
