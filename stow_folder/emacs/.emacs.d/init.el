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
(add-to-list 'default-frame-alist '(font . "Noto Sans Mono-13")) ;; adding this makes emacsclient use this font too
;;(set-frame-font "Monospace-13")
(global-display-line-numbers-mode) ;; shows line numbers
(toggle-frame-maximized)
(setq backup-directory-alist `(("." . "~/.emacs.d/backups"))) ;; saves garbage backups in .saves folder
(setq truncate-lines nil)
(setq create-lockfiles nil) ;; prevent emacs for creating tem files starting with hashta
(global-auto-revert-mode t) ;; auto revert buffer when file change


;;keep cursor at same position when scrolling
(setq scroll-preserve-screen-position 1)
;;scroll window up/down by one line
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))

;; add melpa repo
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


;; install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; load modes
(add-to-list 'load-path "~/Desktop/personal/dotfiles/stow_folder/emacs/.emacs.d/modes")

;; theme
;; (use-package gruber-darker-theme
;;   :ensure t
;;   :config
;;   (load-theme 'gruber-darker t))
;; Better than the default.
(load-theme 'tango-dark t)


;; shortcuts
(windmove-default-keybindings) ;; Shift  arrows to change between windows

;; stolen from https://github.com/stapelberg/configfiles/
;; starting here
(defun bruno-lazy-ido-enable ()
  "since ido is loaded with Emacs, use-package cannot defer"
  (ido-mode t)
  ;; Disable searching in other directories when there are no matches
  ;; (more annoying than helpful).
  (setq ido-auto-merge-work-directories-length -1)

  (if (require 'ido-sort-mtime nil t)

      (ido-sort-mtime-mode t)))

(defun bruno-lazy-ido-switch-buffer ()
  "ibuffer wrapper"
  (interactive)
  (bruno-lazy-ido-enable)
  (call-interactively 'ido-switch-buffer))

(defun bruno-lazy-ido-find-file ()
  "find-file wrapper"
  (interactive)
  (bruno-lazy-ido-enable)
  (call-interactively 'ido-find-file))

(use-package ido
  :ensure nil ; built-in
  :bind (("C-x b" . bruno-lazy-ido-switch-buffer)
	 ("C-x C-f" . bruno-lazy-ido-find-file)))

;; smex
(use-package smex
 :ensure t
 :defer t
 :init (or (boundp 'smex-cache)
	    (smex-initialize))
 :bind ("M-x" . smex))

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
        ("WORK" . ?w)
        ("PROJECTS" . ?d)
        ("PROGRAMMING" .?p)
        (:endgroup . nil)
        )
)
(setq org-startup-with-inline-images t)
(setq org-log-done 'time)




(use-package org-bullets :ensure t)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; markdown mode
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

(put 'upcase-region 'disabled nil)


;; Workaround to use backticks
(global-set-key [S-dead-grave] "`")

;; Whitespace mode
(custom-set-variables
 '(whitespace-style (quote (face tabs spaces trailing space-before-tab
                                 newline indentation empty space-after-tab
                                 space-mark tab-mark))))


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

;; Go-related settings.
(load "brun0-go")

;; Python-related settings.
(load "brun0-python")

;; eglot is a language server protocol (LSP) package for Emacs
(use-package eglot
  :ensure t
  :hook
  (go-mode . eglot-ensure)
  (python-mode . eglot-ensure))
