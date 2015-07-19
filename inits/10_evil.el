(evil-mode 1)

(setq evil-auto-indent t
      evil-want-C-u-scroll t
      evil-echo-state nil
      evil-want-C-i-jump nil
      evil-search-module 'evil-search
      evil-ex-search-vim-style-regexp t)

;; use default emacs key bindings
(dolist (key '("C-e" "C-y" "C-k" "C-n" "C-p" "C-t" "C-d"))
  (define-key evil-insert-state-map (kbd key) nil))

(require 'key-chord)
(key-chord-mode 1)
(key-chord-define-global "jk" 'evil-normal-state)
