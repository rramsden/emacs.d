(projectile-global-mode)
(setq projectile-indexing-method 'git)
(setq projectile-project-root-files '("project.clj" ".git" ".hg" ".bzr" "_darcs" ".projectile" "Makefile"))
(setq projectile-ignored-files '("TAGS" ".DS_Store"))
(setq projectile-ignored-file-extensions '("class" "o" "so" "elc" "jar" "a" "lib"))
(setq projectile-ignored-directories '(".idea" ".git" "Music" "Movies" "Documents" "Desktop" "Pictures"))

;; helm-ag integration
(setq helm-ag-insert-at-point 'symbol)
(defun helm-projectile-ag ()
  (interactive)
  (helm-ag (projectile-project-root)))
