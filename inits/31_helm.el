;; helm
(require 'helm)
(require 'helm-config)
(require 'helm-ag)
(require 'helm-projectile)

(define-key helm-map (kbd "C-w") 'backward-kill-word)
;; disable auto completion
(custom-set-variables '(helm-ff-auto-update-initial-value nil))
;; completion by TAB
(define-key helm-c-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

;; helm-ag
(setq helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
(setq helm-ag-command-option "--all-text")
(setq helm-ag-thing-at-point 'symbol)

(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; evil mode
(define-key evil-normal-state-map (kbd "C-p") 'helm-projectile-find-file)
