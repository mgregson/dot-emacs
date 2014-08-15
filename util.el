(defun changelog-timestamp ()
  "Insert a Debian-changelog formatted timestamp at the point."
  (interactive)
  (insert (format-time-string "%a, %d %b %Y %H:%M:%S %z")))


(defun dka/sort-by-other-list (to-sort-list other-list)
  (let* ((index 0)
         (other-alist (mapcar (lambda (buffer) 
                                (setq index (+ index 1))
                                (cons buffer index))
                              other-list))
         (swartz (mapcar (lambda (item) 
                           (cons (cdr (assoc item other-alist)) item))
                         to-sort-list))
         (sorted-list (sort swartz (lambda (a b) (< (car a) (car b))))))
    (mapcar 'cdr sorted-list)))

(defun dka/rotate-list (list count)
  "Rotate the LIST by COUNT elements"
  (cond
   ((= count 0) list)
   ((not list) list)
   (t
    (dka/rotate-list (nconc  (cdr list) (list (car list)) '()) (1- count)))))

(defun dka/jump-to-window ()
  "Interactively jump to another visible window based on it's `buffer-name' using `ido-completing-read'"
  (interactive)
  (let* ((visible-buffers (mapcar (lambda (window) (window-buffer window)) (window-list)))
         (sorted-visible-buffers (dka/sort-by-other-list visible-buffers (buffer-list)))
         (rotated-buffer-list (dka/rotate-list sorted-visible-buffers 1))
         (visible-buffer-names (mapcar (lambda (buffer) (buffer-name buffer)) rotated-buffer-list))
         (buffer-name (ido-completing-read "Enter buffer to jump to: " 
                                           visible-buffer-names
                                           nil t))
         (window-of-buffer
          (delq nil 
                (mapcar (lambda (window) 
                          (if (equal buffer-name (buffer-name (window-buffer window)))
                              window nil)) (window-list)))))
    (select-window (car window-of-buffer))))
