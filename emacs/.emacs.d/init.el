;; look and feel
(setq inhibit-startup-message t) ;; disables startup page
(menu-bar-mode 0) ;; disables menu bar mode
(tool-bar-mode 0) ;; disables tool bar mode
(set-frame-font "Iosevka-18")
(global-display-line-numbers-mode) ;; shows line numbers
(toggle-frame-maximized)
(setq backup-directory-alist `(("." . "~/.saves"))) ;; saves garbage backups in .saves folder
(setq truncate-lines nil)


;; shortcuts
(windmove-default-keybindings) ;; Shift + arrows to change between windows


;; load themes folder
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")


;; style whitespaces
(progn
   (setq whitespace-style (quote (face spaces tabs newline space-mark tab-mark newline-mark )))
  (setq whitespace-display-mappings
	;; all numbers are unicode codepoint in decimal. e.g. (insert-char 182 1)
	'(
	  (space-mark 32 [183] [46]) ; SPACE 32 「 」, 183 MIDDLE DOT 「·」, 46 FULL 
	  (tab-mark 9 [124 9] [92 9]) ; TAB
	  )))



;; helpful sutff
(ido-mode 1) ;; ido mode is awesome for Cx Cf
;; does the same job that ido do but for M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(global-set-key (kbd "C-c m c") 'mc/edit-lines) ;; edit multiple lines


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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(beacon-color "#cc6666")
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("3d2e532b010eeb2f5e09c79f0b3a277bfc268ca91a59cdda7ffd056b868a03bc" "587688299b36a277c08c0c3091f130268ce5dcec7e08efeb7aac98fb1cfb7d9a" "82e57dab3f6e6d230d4db0f57be11339830cb9ecd90af730b5c447c83a05bc6c" "b77a00d5be78f21e46c80ce450e5821bdc4368abf4ffe2b77c5a66de1b648f10" "a37d20710ab581792b7c9f8a075fcbb775d4ffa6c8bce9137c84951b1b453016" "33ea268218b70aa106ba51a85fe976bfae9cf6931b18ceaf57159c558bbcd1e6" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" "16ab866312f1bd47d1304b303145f339eac46bbc8d655c9bfa423b957aa23cc9" "7575474658c34b905bcec30a725653b2138c2f2d3deef0587e3abfae08c5b276" "fa96a61e4eca5f339ad7f1f3442cb5a83696f6a45d9fe2a7bf3b75fc6912bb91" "eb122e1df607ee9364c2dfb118ae4715a49f1a9e070b9d2eb033f1cefd50a908" "c7eb06356fd16a1f552cfc40d900fe7326ae17ae7578f0ef5ba1edd4fdd09e58" "249e100de137f516d56bcf2e98c1e3f9e1e8a6dce50726c974fa6838fbfcec6b" "c95813797eb70f520f9245b349ff087600e2bd211a681c7a5602d039c91a6428" "11cc65061e0a5410d6489af42f1d0f0478dbd181a9660f81a692ddc5f948bf34" "9cd57dd6d61cdf4f6aef3102c4cc2cfc04f5884d4f40b2c90a866c9b6267f2b3" "d9a28a009cda74d1d53b1fbd050f31af7a1a105aa2d53738e9aa2515908cac4c" "6128465c3d56c2630732d98a3d1c2438c76a2f296f3c795ebda534d62bb8a0e3" "d516f1e3e5504c26b1123caa311476dc66d26d379539d12f9f4ed51f10629df3" "3c7a784b90f7abebb213869a21e84da462c26a1fda7e5bd0ffebf6ba12dbd041" "d2e0c53dbc47b35815315fae5f352afd2c56fa8e69752090990563200daae434" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "3b8284e207ff93dfc5e5ada8b7b00a3305351a3fb222782d8033a400a48eca48" "03e26cd42c3225e6376d7808c946f7bed6382d795618a82c8f3838cd2097a9cc" default))
 '(fci-rule-color "#383838")
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'dark)
 '(frame-brackground-mode 'dark)
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(org-fontify-done-headline nil)
 '(org-fontify-todo-headline nil)
 '(package-selected-packages
   '(treemacs helm-git-grep helm org-bullets exec-path-from-shell go-mode csharp-mode magit multiple-cursors python-mode auctex markdown-mode auto-complete gruber-darker-theme smex use-package))
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(window-divider-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-indentation-current-column-face ((t (:stipple nil :background "black" :overline t :underline (:color "black" :style wave)))))
 '(whitespace-tab ((t (:background "#181818" :foreground "dim gray")))))

;; configuring auto-complete
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))



(defun how-many-region (begin end regexp &optional interactive)
  "Print number of non-trivial matches for REGEXP in region.                    
   Non-interactive arguments are Begin End Regexp"
  (interactive "r\nsHow many matches for (regexp): \np")
  (let ((count 0) opoint)
    (save-excursion
      (setq end (or end (point-max)))
      (goto-char (or begin (point)))
      (while (and (< (setq opoint (point)) end)
                  (re-search-forward regexp end t))
        (if (= opoint (point))
            (forward-char 1)
          (setq count (1+ count))))
      (if interactive (message "%d occurrences" count))
      count)))

(defun infer-indentation-style ()
  ;; if our source file uses tabs, we use tabs, if spaces spaces, and if        
  ;; neither, we use the current indent-tabs-mode                               
  (let ((space-count (how-many-region (point-min) (point-max) "^  "))
        (tab-count (how-many-region (point-min) (point-max) "^\t")))
    (if (> space-count tab-count) (setq indent-tabs-mode nil))
    (if (> tab-count space-count) (setq indent-tabs-mode t))))

(add-hook 'python-mode-hook
    (lambda ()
        (setq indent-tabs-mode nil)
        (infer-indentation-style)))


;; for python mode
;; (add-hook 'python-mode-hook
;;       (lambda ()
;; 	(setq indent-tabs-mode t)
;; 	(setq tab-width 4)
;; 	(setq python-indent-offset 4))
;;       (tabify (point-min)(point-max)) ;; comment this if you want to use spaces instead of tabs in python
;;       )


;; for latex mode
;; sudo apt install texlive-formats-extra -> required
;; to compile just do C c C c and type latex
(eval-after-load "tex"
  '(progn
     (setq TeX-view-program-list '(("Evince" "evince --page-index=%(outpage) %o")))
     ;(add-to-list 'TeX-command-list '("View" "evince %g" TeX-run-command nil t :help "Run evince on your document"))
     (setq TeX-view-program-selection '((output-pdf "Evince")))))


;; multiple-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->")	    'mc/mark-next-like-this)
(global-set-key (kbd "C-<")	    'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<")	    'mc/mark-all-like-this)
(global-set-key (kbd "C-\"")	    'mc/skip-to-next-like-this)
(global-set-key (kbd "C-:")	    'mc/skip-to-previous-like-this)

;; go-mode
(add-hook 'go-mode-hook
	  (lambda ()
	    (add-hook 'before-save-hook 'gofmt-before-save)
	    (setq tab-width 4)
	    (setq indent-tabs-mode 1)))

(setq exec-path (append '("/usr/local/go/bin") exec-path))
(setenv "PATH" (concat "/usr/local/go/bin:" (getenv "PATH")))


;; org-mode
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-todo-keyword-faces
      '(("TODO" . org-warning)
	("DOING_IT" . (:foreground "green" : weight bold))
	("ON_HOLD" . (:foreground "red" :weight bold))
	("CANCELED" . (:foreground "yellow" :weight bold :background "red"))))


(setq org-tag-alist   
      '((:startgroup)
	(:endgroup)			    
	("@relatorio_estagio" .?r)	   
	("@etica" .?e)
	("@aplicacao_web" .?a)		    
	("@n8n" .?n)
	("@reuniao" .?R)
	("@playbooks" .?p)
	("@pessoal" .?P)
	("@jira" .?j)))			    

; treemacs
(use-package treemacs
  :ensure t)
