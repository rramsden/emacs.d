;; rinari
(defvar my-rinari-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "m") 'rinari-find-model)
    (define-key map (kbd "v") 'rinari-find-view)
    (define-key map (kbd "c") 'rinari-find-controller)
    (define-key map (kbd "r") 'rinari-find-routes)
    (define-key map (kbd "t") 'rinari-find-test)
    (define-key map (kbd "s") 'rinari-find-rspec)
    map))
(add-hook 'ruby-mode-hook (lambda ()
                                (evil-define-key 'normal rinari-minor-mode-map (kbd ", r") my-rinari-map)))

(global-rinari-mode +1)
