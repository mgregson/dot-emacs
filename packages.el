(defun mg/ensure-packages (&rest packages)
  "Ensure that each package in the given list of packages is installed."
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
         nil
       (package-install package)
       (require package)))
   packages))

(defvar mg/packages-python
  '())

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
    csv-mode
    dired-toggle
    dired-toggle-sudo))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(package-refresh-contents)
(mg/ensure-packages
 'bbdb
 'org
 'cl-lib
 'tramp
 'dropdown-list
 'company
 'magit
 'org-magit
 'eldoc
 'cider
 'cider-browse-ns
 'sass-mode
 'scala-mode
 'sbt-mode
 'json-mode
 'gist
 'gitconfig-mode
 'gitignore-mode
 'ess
 'erc-hl-nicks
 'thrift
 'protobuf-mode
 'org-eldoc
 'c-eldoc
 'css-eldoc
 'nginx-mode
 'flyspell
 'flyspell-lazy
 'company-c-headers
 'company-ghc
 'company-inf-ruby
 'csv-mode
 'csharp-mode
 'dired-toggle
 'dired-toggle-sudo
 'haskell-mode
 'clojure-mode
 'company-cider
 'company-ghc
 'ghc
 'ghci-completion
 'flycheck
 'flycheck-haskell
 'flymake-easy
 'flymake-haskell-multi)
