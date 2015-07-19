(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(require 'org)
(require 'org-agenda)

(custom-set-variables
  '(org-agenda-files (list "~/Dropbox/org/work.org"
                           "~/Dropbox/org/home.org")))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-src-fontify-natively t)
(setq org-log-done t)
(setq org-return-follows-link t)

(define-key org-agenda-mode-map "j" 'org-agenda-next-line)
(define-key org-agenda-mode-map "k" 'org-agenda-previous-line)

(setq org-agenda-custom-commands
      '(("w" todo "WAITING" nil)
        ("n" todo "NEXT" nil)
        ("d" "Agenda + Next Actions" ((agenda) (todo "NEXT")))))
