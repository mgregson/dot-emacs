(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote (("." . "/tmp/"))))
 '(c-basic-offset 2)
 '(c-default-style
   (quote
    ((c-mode . "bsd")
     (c++-mode . "bsd")
     (java-mode . "bsd")
     (idl-mode . "bsd")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(cider-prefer-local-resources t)
 '(column-number-mode t)
 '(delete-autosave-files t)
 '(display-time-mode t)
 '(flycheck-checkers
   (quote
    (ada-gnat asciidoctor asciidoc c/c++-clang c/c++-gcc c/c++-cppcheck cfengine chef-foodcritic coffee coffee-coffeelint coq css-csslint css-stylelint cwl d-dmd dockerfile-hadolint emacs-lisp emacs-lisp-checkdoc erlang-rebar3 erlang eruby-erubis fortran-gfortran go-gofmt go-golint go-vet go-build go-test go-errcheck go-unconvert go-megacheck groovy haml handlebars haskell-stack-ghc haskell-ghc haskell-hlint html-tidy javascript-eslint javascript-jshint javascript-standard json-jsonlint json-python-json jsonnet less less-stylelint llvm-llc lua-luacheck lua perl perl-perlcritic php php-phpmd php-phpcs processing proselint protobuf-protoc pug puppet-parser puppet-lint python-flake8 python-pylint python-pycompile r-lintr racket rpm-rpmlint markdown-markdownlint-cli markdown-mdl nix rst-sphinx rst ruby-rubocop ruby-reek ruby-rubylint ruby ruby-jruby rust-cargo rust rust-clippy scala scala-scalastyle scheme-chicken scss-lint scss-stylelint sass/scss-sass-lint sass scss sh-bash sh-posix-dash sh-posix-bash sh-zsh sh-shellcheck slim slim-lint sql-sqlint systemd-analyze tcl-nagelfar tex-chktex tex-lacheck texinfo typescript-tslint verilog-verilator vhdl-ghdl xml-xmlstarlet xml-xmllint yaml-jsyaml yaml-ruby solium-checker solidity-checker)))
 '(global-auto-complete-mode t)
 '(global-hl-line-mode nil)
 '(guru-global-mode nil)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(jde-jdk-registry
   (quote
    (("sun-jdk-1.6" . "/opt/sun-jdk-1.6.0.16")
     ("sun-jdk-1.5" . "/opt/sun-jdk-1.5.0.21")
     ("oracle-jdk-1.8" . "/opt/oracle-jdk-bin-1.8.0.5"))))
 '(js-indent-level 2)
 '(longlines-auto-wrap nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (js2-mode golint flymake-go go-tag go-add-tags go-imports go-dlv company-go go-mode flymake-solidity solidity-mode cider php-mode markdown-mode+ el-get json-mode yaml-mode dired-toggle-sudo dired-toggle flymake-easy flycheck flyspell-lazy gitignore-mode gitconfig-mode gist magit company css-eldoc scss-mode sass-mode csharp-mode company-inf-ruby nginx-mode erc-hl-nicks csv-mode ess flymake-haskell-multi flycheck-haskell company-ghc ghci-completion ghc haskell-mode protobuf-mode thrift company-c-headers c-eldoc sbt-mode scala-mode dropdown-list bbdb)))
 '(password-cache-expiry 300)
 '(running-xemacs f)
 '(safe-local-variable-values
   (quote
    ((eval setq flycheck-solidity-solium-soliumrcfile
           (expand-file-name ".soliumrc.json"
                             (let
                                 ((d
                                   (dir-locals-find-file ".")))
                               (if
                                   (stringp d)
                                   d
                                 (car d)))))
     (eval setq flycheck-solidity-solium-soliumrc-file
           (expand-file-name ".soliumrc.json"
                             (let
                                 ((d
                                   (dir-locals-find-file ".")))
                               (if
                                   (stringp d)
                                   d
                                 (car d)))))
     (eval setq flycheck-solidity-solium-soliumrc-file expand-file-name ".soliumrc.json"
           (let
               ((d
                 (dir-locals-find-file ".")))
             (if
                 (stringp d)
                 d
               (car d))))
     (eval setq solidity-solium-path
           (expand-file-name "node_modules/.bin/solium"
                             (let
                                 ((d
                                   (dir-locals-find-file ".")))
                               (if
                                   (stringp d)
                                   d
                                 (car d)))))
     (eval setq flycheck-solidity-solium-soliumrc-file expand-file-name ".soliumrc.json"
           (let
               ((d
                 (dir-locals-find-file ".")))
             (if
                 (strings d)
                 d
               (car d))))
     (eval setq solidity-solium-path
           (expand-file-name "node_modules/.bin/solium"
                             (let
                                 ((d
                                   (dir-locals-find-file ".")))
                               (if
                                   (strings d)
                                   d
                                 (car d)))))
     (eval set
           (solidity-solium-path
            (expand-file-name "node_modules/.bin/solium"
                              (let
                                  ((d
                                    (dir-locals-find-file ".")))
                                (if
                                    (strings d)
                                    d
                                  (car d)))))
           (flycheck-solidity-solium-soliumrc-file expand-file-name ".soliumrc.json"
                                                   (let
                                                       ((d
                                                         (dir-locals-find-file ".")))
                                                     (if
                                                         (strings d)
                                                         d
                                                       (car d)))))
     (flycheck-solidity-solium-soliumrc-file expand-file-name ".soliumrc.json"
                                             (let
                                                 ((d
                                                   (dir-locals-find-file ".")))
                                               (if
                                                   (strings d)
                                                   d
                                                 (car d))))
     (solidity-solium-path expand-file-name "node_modules/.bin/solium"
                           (let
                               ((d
                                 (dir-locals-find-file ".")))
                             (if
                                 (strings d)
                                 d
                               (car d))))
     (js-indent-level . 2))))
 '(scheme-program-name "csi")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(spell-command "spell-aspell")
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(tramp-process-connection-type t)
 '(user-mail-address "mgregson@csclub.uwaterloo.ca")
 '(vc-delete-logbuf-window nil)
 '(wl-message-id-domain "qitaru.net"))

(when window-system
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(default ((t (:inherit nil :stipple nil :background "#343434" :foreground "gray90" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "adobe" :family "courier")))))
  (set-frame-size (selected-frame) 320 80))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#343434" :foreground "gray90" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "adobe" :family "courier")))))
