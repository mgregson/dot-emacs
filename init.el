
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
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-mode-hook 'subword-mode)
(add-hook 'clojure-mode-hook 'cider-mode)
(add-hook 'solidity-mode-hook
          (lambda ()
            (setq-local c-basic-offset 4)))
(add-hook 'rust-mode-hook 'cargo-minor-mode)
(add-hook 'rust-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c <tab>") #'rust-format-buffer)))
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'rust-mode-hook #'flycheck-rust-setup)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.svelte?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))

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

(defun mg/eslint-paths-from-node-modules ()
  "Configure eslint paths relative to the project directory (in node_modules)."
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                    (expand-file-name "node_modules/.bin/eslint" root))))
    (when (and eslint (file-executable-p eslint))
      (progn
        (setq-local flycheck-javascript-eslint-executable eslint)))))

(add-hook 'flycheck-mode-hook #'mg/solidity-paths-from-node-modules)
(add-hook 'flycheck-mode-hook #'mg/eslint-paths-from-node-modules)
(if (fboundp 'flycheck-elm-setup)
    (add-hook 'flycheck-mode-hook #'flycheck-elm-setup))

(add-hook 'elm-mode-hook
          (lambda ()
            (setq company-backends '(company-elm))))

(use-package lsp-mode
  :hook (haskell-mode . lsp)
  :commands lsp)

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package lsp-haskell
  :config (setq lsp-haskell-server-path "haskell-language-server-wrapper")
          (setq lsp-haskell-server-args ()))

(use-package haskell-mode)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
;; enable typescript-tslint checker
(flycheck-add-mode 'typescript-tslint 'web-mode)

(nix-buffer)

(defun mgregson/python-nix-buffer-around (orig-fun &rest args)
  "Allow ORIG-FUN to find various python interpreters as set by nix-buffer.  ARGS is ignored."
  (let ((python-shell-interpreter (executable-find "python")))
    (funcall orig-fun)))

(defun mgregson/wrap-nix-buffer (sym)
  "Add mgregson/python-nix-buffer-around as an :around advice on SYM."
  (advice-add sym :around 'mgregson/python-nix-buffer-around))

(defun mgregson/wrap-all-nix-buffer (list)
  "Call mgregson/wrap-nix-buffer on each element of LIST."
  (while list
    (mgregson/wrap-nix-buffer (car list))
    (setq list (cdr list))))

(mgregson/wrap-all-nix-buffer
 '(python-flake8
   python-flymake-command
   python-pycompile
   python-pylint))

(direnv-mode)

(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(provide 'init)
;;; init ends here
