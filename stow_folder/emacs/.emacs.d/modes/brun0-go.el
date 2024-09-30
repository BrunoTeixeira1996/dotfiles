;; go mode
(provide 'brun0-go)

(defun brun0-eglot-organize-imports ()
  (call-interactively 'eglot-code-action-organize-imports))

(defun go-mode-hook ()
  ;; Format (previously: gofmt) and organize imports (previously: goimports).
  (add-hook 'before-save-hook #'eglot-format-buffer -10 t)
  (add-hook 'before-save-hook #'brun0-eglot-organize-imports nil t)
  (add-to-list 'exec-path "~/go/bin")
  (local-set-key (kbd "C-c d") 'godoc-at-point)
  ;; One tab will be displayed as 4 spaces.
  (set 'tab-width 4))
(add-hook 'go-mode-hook 'go-mode-hook)
(add-hook 'go-mode-hook 'eglot-ensure)
