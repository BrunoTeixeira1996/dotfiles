;; rust mode
(provide 'brun0-rust)


;; Define a setup function that runs in the mode hook.
(defun setup-rust ()
  "Setup for ‘rust-mode’."
  ;; Configuration taken from rust-analyzer’s manual:
  ;; https://rust-analyzer.github.io/manual.html#configuration
  (setq-local eglot-workspace-configuration
              ;; Setting the workspace configuration for every
              ;; rust-mode buffer, you can also set it with dir-local
              ;; variables, should you want different configuration
              ;; per project/directory.
              '(:rust-analyzer
                ( :procMacro ( :attributes (:enable t)
                               :enable t)
                  :cargo (:buildScripts (:enable t))
                  :diagnostics (:disabled ["unresolved-proc-macro"
                                           "unresolved-macro-call"])))))

(defun rust-mode-hook()
 ​ (​add-to-list​ ​'eglot-server-programs​ '((​rust-mode​) ​.​ (​"​rust-analyzer​"​))) 
  ​(​add-hook​ ​'rust-mode-hook​ ​'eglot-ensure​)
  (add-hook 'rust-mode-hook 'setup-rust)
 )
