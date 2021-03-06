;; Cask
(require 'cask (cond
                 ((file-exists-p "~/.cask/cask.el")
                  "~/.cask/cask.el")
                 ((file-exists-p "/usr/local/share/emacs/site-lisp/cask.el")
                  "/usr/local/share/emacs/site-lisp/cask.el")
                 ((file-exists-p "/usr/share/emacs/site-lisp/cask.el")
                  "/usr/share/emacs/site-lisp/cask.el")))
(defconst cask-bundle (cask-initialize))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(helm-ff-auto-update-initial-value nil)
 '(org-agenda-files (list "~/Dropbox/org/work.org" "~/Dropbox/org/home.org"))
 '(tab-width 2))

(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")

(global-set-key (kbd "<C-p>") 'helm-projectile-find-file)
