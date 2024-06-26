;;; custom.el -- customizations
;;; Commentary:
;;;   Managed by Emacs
;;; Code:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(auth-sources
   '("~/.authinfo" "~/.authinfo.gpg" "~/.netrc"
     '(password-store)))
 '(backup-directory-alist '(("." . "/tmp/")))
 '(c-basic-offset 2)
 '(c-default-style
   '((c-mode . "bsd")
     (c++-mode . "bsd")
     (java-mode . "bsd")
     (idl-mode . "bsd")
     (awk-mode . "awk")
     (other . "gnu")))
 '(cider-prefer-local-resources t)
 '(column-number-mode t)
 '(dante-repl-command-line '("stack" "repl" dante-target))
 '(delete-autosave-files t)
 '(dired-use-ls-dired nil)
 '(display-time-mode t)
 '(flycheck-checkers
   '(ada-gnat asciidoctor asciidoc c/c++-clang c/c++-gcc c/c++-cppcheck cfengine chef-foodcritic coffee coffee-coffeelint coq css-csslint css-stylelint cwl d-dmd dockerfile-hadolint emacs-lisp emacs-lisp-checkdoc erlang-rebar3 erlang eruby-erubis fortran-gfortran go-gofmt go-golint go-vet go-build go-test go-errcheck go-unconvert go-megacheck groovy haml handlebars haskell-stack-ghc haskell-ghc haskell-hlint html-tidy javascript-eslint javascript-jshint javascript-standard json-jsonlint json-python-json jsonnet less less-stylelint llvm-llc lua-luacheck lua perl perl-perlcritic php php-phpmd php-phpcs processing proselint protobuf-protoc pug puppet-parser puppet-lint python-flake8 python-pylint python-pycompile r-lintr racket rpm-rpmlint markdown-markdownlint-cli markdown-mdl nix rst-sphinx rst ruby-rubocop ruby-reek ruby-rubylint ruby ruby-jruby rust-cargo rust rust-clippy scala scala-scalastyle scheme-chicken scss-lint scss-stylelint sass/scss-sass-lint sass scss sh-bash sh-posix-dash sh-posix-bash sh-zsh sh-shellcheck slim slim-lint sql-sqlint systemd-analyze tcl-nagelfar tex-chktex tex-lacheck texinfo typescript-tslint verilog-verilator vhdl-ghdl xml-xmlstarlet xml-xmllint yaml-jsyaml yaml-ruby solium-checker solidity-checker))
 '(flycheck-disabled-checkers '(javascript-jshint javascript-standard))
 '(flycheck-go-vet-executable "go vet")
 '(global-auto-complete-mode t)
 '(global-hl-line-mode nil)
 '(guru-global-mode nil)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(intero-package-version "0.1.40")
 '(jde-jdk-registry
   '(("sun-jdk-1.6" . "/opt/sun-jdk-1.6.0.16")
     ("sun-jdk-1.5" . "/opt/sun-jdk-1.5.0.21")
     ("oracle-jdk-1.8" . "/opt/oracle-jdk-bin-1.8.0.5")))
 '(js-indent-level 2)
 '(js2-bounce-indent-p t)
 '(js2-highlight-external-variables nil)
 '(ledger-default-date-format "%Y-%m-%d")
 '(ledger-reports
   '(("test" "ledger ")
     ("bal" "%(binary) -f %(ledger-file) bal")
     ("reg" "%(binary) -f %(ledger-file) reg")
     ("payee" "%(binary) -f %(ledger-file) reg @%(payee)")
     ("account" "%(binary) -f %(ledger-file) reg %(account)")))
 '(load-prefer-newer t)
 '(longlines-auto-wrap nil)
 '(lsp-clients-typescript-prefer-use-project-ts-server t)
 '(lsp-haskell-server-path "haskell-language-server")
 '(lsp-headerline-breadcrumb-enable nil)
 '(make-backup-files nil)
 '(markdown-command "pandoc")
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(polymode helm-gitlab helm gitlab hledger-mode ledger-mode lsp-haskell lsp-ui lsp-mode pass password-store-otp dante direnv nix-buffer web-mode smartparens jsonrpc flycheck-rust cargo racer flymake-rust rust-mode tide company-terraform terraform-mode restclient psc-ide-emacs psci flycheck-purescript purescript-mode psc-ide elm-oracle flycheck-elm elm-mode use-package intero nix-mode vue-mode js2-mode golint go-tag go-add-tags go-imports go-dlv company-go go-mode flymake-solidity solidity-mode cider php-mode markdown-mode+ el-get json-mode yaml-mode dired-toggle-sudo dired-toggle flymake-easy flycheck flyspell-lazy gitignore-mode gitconfig-mode gist magit company css-eldoc scss-mode sass-mode csharp-mode company-inf-ruby nginx-mode erc-hl-nicks csv-mode ess flymake-haskell-multi flycheck-haskell company-ghc ghci-completion ghc haskell-mode protobuf-mode thrift company-c-headers c-eldoc sbt-mode scala-mode dropdown-list bbdb))
 '(password-cache-expiry 300)
 '(python-shell-interpreter "/nix/var/nix/profiles/default/bin/nix-shell")
 '(running-xemacs f)
 '(rust-indent-offset 2)
 '(safe-local-variable-values
   '((intero-targets "est:exe:est" "est:test:est-test")
     (eval setq flycheck-solidity-solium-soliumrcfile
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
     (js-indent-level . 2)))
 '(scheme-program-name "csi")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(spell-command "spell-aspell")
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(tramp-process-connection-type t)
 '(typescript-indent-level 2)
 '(user-mail-address "mgregson")
 '(vc-delete-logbuf-window nil)
 '(warning-suppress-log-types '((lsp-mode) (lsp-mode) (lsp-mode) (lsp-mode) (comp)))
 '(warning-suppress-types '((lsp-mode) (lsp-mode) (lsp-mode) (comp)))
 '(web-mode-attr-indent-offset 2)
 '(web-mode-attr-value-indent-offset 2)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-markup-indent-offset 2)
 '(wl-message-id-domain ""))

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
(provide 'custom)
;;; custom.el ends here
