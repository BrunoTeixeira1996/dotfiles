;;; emacs-config --- someonewithpc's Emacs config
;;; Commentary:
;;; A reduced but complete (for my uses) config,
;;; based on spacemacs

;;; Code:

(require 'package)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config")
(add-to-list 'load-path "~/.emacs.d/extern")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; (setq debug-on-error t)



(when (not package-archive-contents)
    (package-refresh-contents))

(global-linum-mode 1)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(eval-when-compile (require 'use-package))
(setq use-package-always-ensure t) ;; Install from repo if not yet available

(set-register ?e '(file . "~/.emacs.d/init.el"))

;; Require "layers"
(require 'setup-general)
(require 'setup-helm)
;; (require 'setup-helm-gtags)
(require 'setup-editing)
(require 'setup-c)
(require 'setup-php)
;; (require 'setup-lisp)
;; (require 'setup-prolog)
(require 'setup-terminal) ;; Setup for using emacs in a terninal as well as a terminal in emacs
(require 'setup-programming)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("80d5a22931c15756b00fb258b80c93b8bc5096bb698dadfb6155ef3550e1c8fb" "d9646b131c4aa37f01f909fbdd5a9099389518eb68f25277ed19ba99adeb7279" "eb122e1df607ee9364c2dfb118ae4715a49f1a9e070b9d2eb033f1cefd50a908" "e999c8da71ad6c135822b64b12381ae81f431e80a1c9ec77456623b972b2a50f" "6aae2eb39ce5d67379a4718cdb295b819c4100ddda8d07fa8eab53289a0b7551" "3d9025d9175d613a4eedb1ba43411a9e732a0885cb51b357aa5df5bce24c7d5b" "c7901691c1dd0d501f6ba5a296490d8b85f550aa0ece175b37008ea453b0a0bd" default)))
 '(flycheck-check-syntax-automatically (quote (save idle-change)))
 '(flycheck-clang-args nil)
 '(flycheck-gcc-language-standard "c++20")
 '(flycheck-idle-change-delay 1)
 '(ggtags-enable-navigation-keys nil)
 '(ggtags-extra-args (quote ("--skip-unreadable")))
 '(ggtags-sort-by-nearness t)
 '(ggtags-use-idutils t)
 '(package-selected-packages
   (quote
    (monokai-theme flatland-theme markdown-mode impatient-mode cmake-mode pdf-tools duplicate-thing zygospore xclip ws-butler web-mode volatile-highlights use-package undo-tree twig-mode tramp-auto-auth sql-indent smartparens smart-tabs-mode rebox2 pandoc-mode pandoc multiple-cursors material-theme markdown-mode+ iedit highlight-indent-guides helm-tramp helm-swoop helm-projectile helm-gtags helm-company haskell-mode gmpl-mode ggtags folding fold-dwim flycheck ewal-spacemacs-themes ewal-doom-themes elpy dumb-jump dtrt-indent drag-stuff dockerfile-mode docker-compose-mode company-php company-irony-c-headers company-irony company-c-headers comment-dwim-2 clean-aindent-mode auctex anzu ac-php))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'scroll-left 'disabled nil)
(put 'narrow-to-region 'disabled nil)


(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
               '("org-plain-latex"
                 "\\documentclass{article}
[NO-DEFAULT-PACKAGES]
[PACKAGES]
[EXTRA]"
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
  )
