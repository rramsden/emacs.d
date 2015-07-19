(defun insert-standard-date ()
    "Inserts standard date time string."
    (interactive)
    (insert (format-time-string "%c")))

(global-set-key (kbd "C-c d") 'insert-standard-date)

; Map Alt key to Meta
(setq x-alt-keysym 'meta)
