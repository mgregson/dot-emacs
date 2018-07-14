;;; Packages --- manages packages I use
;;; Commentary:
;;; Code:
(defun mg/ensure-packages (&rest packages)
  "Ensure that each package in the given list of PACKAGES is installed."
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
         (require package)
       (package-install package)
       (require package)))
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
    nix-mode))

(defvar mg/packages-data
  '(ess
    csv-mode))

(defvar mg/packages-idl
  '(thrift
    protobuf-mode))

(defvar mg/packages-haskell
  '(haskell-mode
    ghc
    ghci-completion
    company-ghc
    flycheck-haskell
    flymake-haskell-multi))

(defvar mg/packages-web
  '(sass-mode
    scss-mode
    css-eldoc))

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
    flymake-go
    golint))

(defvar mg/packages-javascript
  '(js2-mode))

(defvar mg/packages-core
  '(bbdb
    org
    cl-lib
    tramp
    company
    magit
    eldoc
    gist
    gitconfig-mode
    gitignore-mode
    flyspell
    flyspell-lazy
    flycheck
    flymake-easy
    dired-toggle
    dired-toggle-sudo
    yaml-mode
    json-mode
    el-get
    markdown-mode+))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-refresh-contents)
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
        mg/packages-data
        mg/packages-ops
        mg/packages-ruby
        mg/packages-dotnet
        mg/packages-web
        mg/packages-ethereum
        mg/packages-go
        mg/packages-javascript
        ))
(provide 'packages)
;;; packages.el ends here
