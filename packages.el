(defun mg/ensure-packages (&rest packages)
  "Ensure that each package in the given list of packages is installed."
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
  '(php+-mode
    php-mode))

(defvar mg/packages-clojure
  '(cider
    cider-browse-ns
    clojure-mode
    company-cider))

(defvar mg/packages-scala
  '(scala-mode
    sbt-mode))

(defvar mg/packages-c
  '(c-eldoc
    company-c-headers))

(defvar mg/packages-ops
  '(erc-hl-nicks
    nginx-mode))

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

(defvar mg/packages-core
  '(bbdb
    org
    cl-lib
    tramp
    dropdown-list
    company
    magit
    org-magit
    eldoc
    gist
    gitconfig-mode
    gitignore-mode
    org-eldoc
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
(add-to-list 'package-archives
             '("e6h" . "http://www.e6h.org/packages/"))
(package-initialize)
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
        mg/packages-web))
