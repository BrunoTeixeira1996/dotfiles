;; python mode
(provide 'brun0-python)

(defun python-mode-hook ()
  (add-hook 'python-mode-hook
	    (lambda ()
              (setq indent-tabs-mode nil)
              (setq tab-width 4)
              (setq indent-line-function 'insert-tab))))

(add-hook 'python-mode-hook 'python-mode-hook)
(add-hook 'python-mode-hook 'eglot-ensure)

