;; go mode
(provide 'brun0-go)

;; Use goimports instead of gofmt so that we get automatic imports.
(set 'gofmt-command "goimports")

(defun go-mode-hook ()
  ;; Run gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  (add-to-list 'exec-path "~/go/bin")
  (local-set-key (kbd "C-c d") 'godoc-at-point)
  ;; One tab will be displayed as 4 spaces.
  (set 'tab-width 4))
  ;; Enable eldoc (displays function signatures in the minibuf).
;;  (go-eldoc-setup))
(add-hook 'go-mode-hook 'go-mode-hook)
(add-hook 'go-mode-hook 'eglot-ensure)
