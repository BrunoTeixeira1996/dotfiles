;NOT USING ANYMORE
;TODO
;directories
;organize notes from md to org
;archive done tasks

(defun personal/org-mode-setup ()
  (org-indent-mode)
  (auto-full-mode 0)
  (visual-line-mode 1))


(use-package org
  :hook (org-mode . personal/org-mode-setup)
  :config
  (setq org-ellipsis " ▾"))

(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●")))


; C-c C-c
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
