;;; Packages --- manages packages I use
;;; Commentary:
;;; Code:
(defun mg/ensure-packages (&rest packages)
  "Ensure that each package in the given list of PACKAGES is installed."
  (mapcar
   (lambda (package)
     (straight-use-package package))
   packages))

(defvar mg/packages-python
  '())

(defvar mg/packages-php
  '(php-mode))

(defvar mg/packages-clojure
  '(cider
    clojure-mode))

(defvar mg/packages-scala
  '(scala-mode
    sbt-mode))

(defvar mg/packages-c
  '(c-eldoc
    company-c-headers))

(defvar mg/packages-ops
  '(erc-hl-nicks
    nginx-mode
    nix-mode
    nix-buffer))

(defvar mg/packages-data
  '(ess
    csv-mode))

(defvar mg/packages-idl
  '(thrift
    protobuf-mode))

(defvar mg/packages-haskell
  '(haskell-mode
    ghci-completion
    flycheck-haskell
    flymake-haskell-multi
    lsp-haskell))

(defvar mg/packages-rust
  '(rust-mode
    flycheck-rust
    racer
    cargo))

(defvar mg/packages-elm
  '(elm-mode
    flycheck-elm))

(defvar mg/packages-web
  '(sass-mode
    scss-mode
    css-eldoc
    web-mode))

(defvar mg/packages-ruby
  '(company-inf-ruby))

(defvar mg/packages-dotnet
  '(csharp-mode))

(defvar mg/packages-ethereum
  '(solidity-mode
    flymake-solidity))

(defvar mg/packages-go
  '(go-mode
    company-go
    go-dlv
    go-imports
    go-add-tags
    go-tag
    golint))

(defvar mg/packages-javascript
  '(js2-mode
    typescript-mode
    vue-mode
    psc-ide
    psci
    purescript-mode
    tide))

(defvar mg/packages-devops
  '(terraform-mode
    company-terraform))

(defvar mg/packages-core
  '(bbdb
    org
    polymode
    cl-lib
    tramp
    company
    tree-sitter
    tree-sitter-ispell
    tree-sitter-langs
    magit
    eldoc
    gist
    flyspell
    flyspell-lazy
    flycheck
    flymake-easy
    dired-toggle
    dired-toggle-sudo
    yaml-mode
    json-mode
    use-package
    restclient
    direnv
    password-store-otp
    pass
    lsp-mode
    lsp-ui
    ledger-mode
    hledger-mode
    '(tla-tools :type git :host github :repo "mrc/tla-tools")))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(let ((last-load-file (expand-file-name "~/.emacs.d/.last-load.packages.el"))
      (current-day (time-to-days (current-time))))
  (progn
    (if (or (not (file-exists-p last-load-file))
            (< (time-to-days (nth 5 (file-attributes last-load-file))) current-day))
        (progn
          (package-refresh-contents))
      (write-region "" nil last-load-file nil t)
      (message "created timestamp file"))
    (progn
      (apply 'mg/ensure-packages
             (append
              mg/packages-core
              mg/packages-php
              mg/packages-python
              mg/packages-clojure
              mg/packages-scala
              mg/packages-c
              mg/packages-idl
              mg/packages-haskell
              mg/packages-elm
              mg/packages-data
              mg/packages-ops
              mg/packages-ruby
              mg/packages-dotnet
              mg/packages-web
              mg/packages-ethereum
              mg/packages-go
              mg/packages-javascript
              mg/packages-devops
              mg/packages-rust
              )))))

(require 'use-package)
(provide 'packages)
;;; packages.el ends here
