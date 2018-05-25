
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;; Code:
(package-initialize)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(mapc (lambda (file)
        (load-file
         (concat "~/.emacs.d/"
                 file)))
      (list
       "packages.el"
       "bbdb.el"
       "org.el"
       "util.el"))

(global-company-mode)
(global-flycheck-mode)
(with-eval-after-load 'company
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
  (define-key company-active-map (kbd "C-<return>") 'company-complete-selection))

(global-set-key (kbd "C-x j") 'dka/jump-to-window)
(global-set-key (kbd "C-c r") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-x g") 'magit-status)

(add-hook 'inferior-haskell-mode-hook 'ghci-completion-mode)
(add-hook 'haskell-mode-hook 'haskell-indent-mode)
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-mode-hook 'subword-mode)
(add-hook 'clojure-mode-hook 'cider-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(defun mg/solidity-paths-from-node-modules ()
  "Configure solidity paths relative to the project directory (in node_modules)."
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (solc (and root
                    (expand-file-name "node_modules/.bin/solcjs" root)))
         (solium (and root
                      (expand-file-name "node_modules/.bin/solium" root)))
         (soliumrc (and root
                        (expand-file-name ".soliumrc.json" root))))
    (when (and solium soliumrc (file-executable-p solium))
      (progn
        (setq-local solidity-solium-path solium)
        (setq-local flycheck-solidity-solium-soliumrcfile soliumrc)
        (setq-local flycheck-solium-checker-executable solium)
        (setq-local flycheck-solidity-checker-executable solc)))))

(add-hook 'flycheck-mode-hook #'mg/solidity-paths-from-node-modules)

(provide 'init)
;;; init ends here
