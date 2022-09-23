;; (with-eval-after-load "lsp-rust"
;;     (lsp-register-client
;;      (make-lsp-client
;;       :new-connection (lsp-tramp-connection
;;                        (executable-find (car lsp-rust-analyzer-server-command)))
;;       :major-modes '(rust-mode rustic-mode)
;;       :priority (if (eq lsp-rust-server 'rust-analyzer) 1 -1)
;;       :remote? t
;;       :initialization-options 'lsp-rust-analyzer--make-init-options
;;       :notification-handlers (ht<-alist lsp-rust-notification-handlers)
;;       :action-handlers (ht<-alist lsp-rust-action-handlers)
;;       :library-folders-fn (lambda (_workspace) lsp-rust-library-directories)
;;       :ignore-messages nil
;;       :server-id 'rust-analyzer-remote)))

(use-package rustic
  :ensure
  :bind (:map rustic-mode-map
              ("M-j" . lsp-ui-imenu)
              ("M-?" . lsp-find-references)
              ("C-c C-c l" . flycheck-list-errors)
              ("C-c C-c r" . lsp-rename)))

(use-package lsp-mode
  :ensure
  :commands lsp
  :custom
  (lsp-rust-analyzer-cargo-watch-command "clippy")
  (lsp-eldoc-enable-hover nil)
  (lsp-idle-delay 0.3)
  (lsp-rust-analyzer-server-display-inlay-hints nil) 
  (lsp-rust-analyzer-display-lifetime-elision-hints-enable "skip_trivial")
  (lsp-rust-analyzer-display-chaining-hints nil)
  (lsp-headerline-breadcrumb-enable nil)
  (lsp-modeline-code-actions-enable nil)
  (lsp-modeline-diagnostics-enable nil)
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

(use-package lsp-ui
  :ensure
  :commands lsp-ui-mode
  :custom
  (lsp-ui-peek-always-show t)
  (lsp-ui-sideline-show-hover nil)
  (lsp-ui-doc-enable nil))



(use-package yasnippet
  :ensure
  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook 'yas-minor-mode)
  (add-hook 'text-mode-hook 'yas-minor-mode))

(use-package flycheck :ensure)

(use-package company :ensure)
(global-company-mode 1)
