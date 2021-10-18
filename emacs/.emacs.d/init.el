;; look and feel
(setq inhibit-startup-message t) ;; disables startup page
(menu-bar-mode 0) ;; disables menu bar mode
(tool-bar-mode 0) ;; disables tool bar mode
(set-frame-font "Hack-18")
(global-linum-mode t) ;; shows lines numbers
(toggle-frame-maximized)
(setq backup-directory-alist `(("." . "~/.saves"))) ;; saves garbage backups in .saves folder


;; helpful sutff
(ido-mode 1) ;; ido mode is awesome for Cx Cf
;; does the same job that ido do but for M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; shortcuts
(windmove-default-keybindings) ;; Shift + arrows to change between windows

;; packages
(require 'package)
(setq package-enable-at-startup nil) ;;does not start packages

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize) ;; start the packages

;; helps installing packages
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; melpa stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("03e26cd42c3225e6376d7808c946f7bed6382d795618a82c8f3838cd2097a9cc" default))
 '(package-selected-packages
   '(python-mode auctex markdown-mode auto-complete gruber-darker-theme smex use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; configuring auto-complete
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))


;; for python mode
(add-hook 'python-mode-hook
      (lambda ()
        (setq indent-tabs-mode t)
        (setq tab-width 4)
        (setq python-indent-offset 4)))


;; for latex mode
;; sudo apt install texlive-formats-extra -> required
(add-hook 'LaTeX-mode-hook 'linum-mode)
(eval-after-load "tex"
  '(progn
     (setq TeX-view-program-list '(("Evince" "evince --page-index=%(outpage) %o")))
     ;(add-to-list 'TeX-command-list '("View" "evince %g" TeX-run-command nil t :help "Run evince on your document"))
     (setq TeX-view-program-selection '((output-pdf "Evince")))))


;; TODO
;; magit
