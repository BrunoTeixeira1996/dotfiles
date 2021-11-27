;; look and feel
(setq inhibit-startup-message t) ;; disables startup page
(menu-bar-mode 0) ;; disables menu bar mode
(tool-bar-mode 0) ;; disables tool bar mode
(set-frame-font "Hack-18")
(global-display-line-numbers-mode) ;; shows line numbers
(toggle-frame-maximized)
(setq backup-directory-alist `(("." . "~/.saves"))) ;; saves garbage backups in .saves folder

;; shortcuts
(windmove-default-keybindings) ;; Shift + arrows to change between windows


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

;; usefull for ident guides
;; (use-package highlight-indent-guides
;;   :hook (prog-mode . highlight-indent-guides-mode)
;;   :config (setq highlight-indent-guides-method 'character)
;;   )


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
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("16ab866312f1bd47d1304b303145f339eac46bbc8d655c9bfa423b957aa23cc9" "7575474658c34b905bcec30a725653b2138c2f2d3deef0587e3abfae08c5b276" "fa96a61e4eca5f339ad7f1f3442cb5a83696f6a45d9fe2a7bf3b75fc6912bb91" "eb122e1df607ee9364c2dfb118ae4715a49f1a9e070b9d2eb033f1cefd50a908" "c7eb06356fd16a1f552cfc40d900fe7326ae17ae7578f0ef5ba1edd4fdd09e58" "249e100de137f516d56bcf2e98c1e3f9e1e8a6dce50726c974fa6838fbfcec6b" "c95813797eb70f520f9245b349ff087600e2bd211a681c7a5602d039c91a6428" "11cc65061e0a5410d6489af42f1d0f0478dbd181a9660f81a692ddc5f948bf34" "9cd57dd6d61cdf4f6aef3102c4cc2cfc04f5884d4f40b2c90a866c9b6267f2b3" "d9a28a009cda74d1d53b1fbd050f31af7a1a105aa2d53738e9aa2515908cac4c" "6128465c3d56c2630732d98a3d1c2438c76a2f296f3c795ebda534d62bb8a0e3" "d516f1e3e5504c26b1123caa311476dc66d26d379539d12f9f4ed51f10629df3" "3c7a784b90f7abebb213869a21e84da462c26a1fda7e5bd0ffebf6ba12dbd041" "d2e0c53dbc47b35815315fae5f352afd2c56fa8e69752090990563200daae434" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "3b8284e207ff93dfc5e5ada8b7b00a3305351a3fb222782d8033a400a48eca48" "03e26cd42c3225e6376d7808c946f7bed6382d795618a82c8f3838cd2097a9cc" default))
 '(fci-rule-color "#383838")
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(package-selected-packages
   '(magit zenburn-theme multiple-cursors python-mode auctex markdown-mode auto-complete gruber-darker-theme smex use-package))
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
 '(vc-annotate-very-old-color "#DC8CC3"))
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


;; for python mode
(add-hook 'python-mode-hook
      (lambda ()
        (setq indent-tabs-mode t)
        (setq tab-width 4)
        (setq python-indent-offset 4))
      (tabify (point-min)(point-max)) ;; comment this if you want to use spaces instead of tabs in python
      )


;; for latex mode
;; sudo apt install texlive-formats-extra -> required
;; to compile just do C c C c and type latex
(eval-after-load "tex"
  '(progn
     (setq TeX-view-program-list '(("Evince" "evince --page-index=%(outpage) %o")))
     ;(add-to-list 'TeX-command-list '("View" "evince %g" TeX-run-command nil t :help "Run evince on your document"))
     (setq TeX-view-program-selection '((output-pdf "Evince")))))
;; look and feel
(setq inhibit-startup-message t) ;; disables startup page
(menu-bar-mode 0) ;; disables menu bar mode
(tool-bar-mode 0) ;; disables tool bar mode
(set-frame-font "Hack-18")
(global-display-line-numbers-mode) ;; shows line numbers
(toggle-frame-maximized)
(setq backup-directory-alist `(("." . "~/.saves"))) ;; saves garbage backups in .saves folder

;; shortcuts
(windmove-default-keybindings) ;; Shift + arrows to change between windows


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

;; fixmee shows TODOS by urgency
(require 'fixmee)
(require 'button-lock)
(global-fixmee-mode 1)


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
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("6bdcff29f32f85a2d99f48377d6bfa362768e86189656f63adbf715ac5c1340b" "16ab866312f1bd47d1304b303145f339eac46bbc8d655c9bfa423b957aa23cc9" "7575474658c34b905bcec30a725653b2138c2f2d3deef0587e3abfae08c5b276" "fa96a61e4eca5f339ad7f1f3442cb5a83696f6a45d9fe2a7bf3b75fc6912bb91" "eb122e1df607ee9364c2dfb118ae4715a49f1a9e070b9d2eb033f1cefd50a908" "c7eb06356fd16a1f552cfc40d900fe7326ae17ae7578f0ef5ba1edd4fdd09e58" "249e100de137f516d56bcf2e98c1e3f9e1e8a6dce50726c974fa6838fbfcec6b" "c95813797eb70f520f9245b349ff087600e2bd211a681c7a5602d039c91a6428" "11cc65061e0a5410d6489af42f1d0f0478dbd181a9660f81a692ddc5f948bf34" "9cd57dd6d61cdf4f6aef3102c4cc2cfc04f5884d4f40b2c90a866c9b6267f2b3" "d9a28a009cda74d1d53b1fbd050f31af7a1a105aa2d53738e9aa2515908cac4c" "6128465c3d56c2630732d98a3d1c2438c76a2f296f3c795ebda534d62bb8a0e3" "d516f1e3e5504c26b1123caa311476dc66d26d379539d12f9f4ed51f10629df3" "3c7a784b90f7abebb213869a21e84da462c26a1fda7e5bd0ffebf6ba12dbd041" "d2e0c53dbc47b35815315fae5f352afd2c56fa8e69752090990563200daae434" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "6b5c518d1c250a8ce17463b7e435e9e20faa84f3f7defba8b579d4f5925f60c1" "3b8284e207ff93dfc5e5ada8b7b00a3305351a3fb222782d8033a400a48eca48" "03e26cd42c3225e6376d7808c946f7bed6382d795618a82c8f3838cd2097a9cc" default))
 '(fci-rule-color "#383838")
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(package-selected-packages
   '(grip-mode fixmee magit zenburn-theme multiple-cursors python-mode auctex markdown-mode auto-complete gruber-darker-theme smex use-package))
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
 '(vc-annotate-very-old-color "#DC8CC3"))
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


;; for python mode
(add-hook 'python-mode-hook
      (lambda ()
        (setq indent-tabs-mode t)
        (setq tab-width 4)
        (setq python-indent-offset 4))
      (tabify (point-min)(point-max)) ;; comment this if you want to use spaces instead of tabs in python
      )


;; for latex mode
;; sudo apt install texlive-formats-extra -> required
;; to compile just do C c C c and type latex
(eval-after-load "tex"
  '(progn
     (setq TeX-view-program-list '(("Evince" "evince --page-index=%(outpage) %o")))
     ;(add-to-list 'TeX-command-list '("View" "evince %g" TeX-run-command nil t :help "Run evince on your document"))
     (setq TeX-view-program-selection '((output-pdf "Evince")))))


;; Grip mode for live markdown preview
(use-package grip-mode
  :ensure t
  :hook ((markdown-mode org-mode) . grip-mode))
