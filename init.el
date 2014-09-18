(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(mapcar (lambda (file)
          (load-file
           (concat "~/.emacs.d/"
                   file)))
        (list
         "packages.el"
         "bbdb.el"
         "org.el"
         "util.el"))

(global-company-mode)
(define-key company-active-map (kbd "M-n") nil)
(define-key company-active-map (kbd "M-p") nil)
(define-key company-active-map (kbd "<up>") nil)
(define-key company-active-map (kbd "RET") nil)
(define-key company-active-map [return] nil)
(define-key company-active-map [tab] nil)
(define-key company-active-map [space] nil)
(define-key company-active-map (kbd "TAB") nil)
(define-key company-active-map (kbd "C-<down>") 'company-select-next)
(define-key company-active-map (kbd "C-<up>") 'company-select-previous)
(define-key company-active-map (kbd "C-<return>") 'company-complete-selection)

(global-set-key (kbd "C-x j") 'dka/jump-to-window)
(global-set-key (kbd "C-c r") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-x g") 'magit-status)

(add-hook 'inferior-haskell-mode-hook 'ghci-completion-mode)
(add-hook 'haskell-mode-hook 'haskell-indent-mode)
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-mode-hook 'subword-mode)
(add-hook 'clojure-mode-hook 'cider-mode)
