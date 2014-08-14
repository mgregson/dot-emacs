(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote (("." . "/tmp/"))))
 '(c-basic-offset 2)
 '(c-default-style (quote ((c-mode . "bsd")
                           (c++-mode . "bsd")
                           (java-mode . "bsd")
                           (idl-mode . "bsd")
                           (awk-mode . "awk")
                           (other . "gnu"))))
 '(cider-prefer-local-resources t)
 '(column-number-mode t)
 '(delete-autosave-files t)
 '(display-time-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(jde-jdk-registry (quote (("sun-jdk-1.6" . "/opt/sun-jdk-1.6.0.16")
                            ("sun-jdk-1.5" . "/opt/sun-jdk-1.5.0.21")
                            ("oracle-jdk-1.8" . "/opt/oracle-jdk-bin-1.8.0.5"))))
 '(js-indent-level 2)
 '(longlines-auto-wrap nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(password-cache-expiry 300)
 '(running-xemacs f)
 '(safe-local-variable-values (quote ((js-indent-level . 2))))
 '(scheme-program-name "csi")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(spell-command "spell-aspell")
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(user-mail-address "mgregson@csclub.uwaterloo.ca")
 '(vc-delete-logbuf-window nil)
 '(wl-message-id-domain "qitaru.net")
 '(global-auto-complete-mode t)
 '(global-hl-line-mode nil)
 '(guru-global-mode nil)
 '(js-indent-level 2)
 '(tramp-process-connection-type t))

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


(defun changelog-timestamp ()
  "Insert a Debian-changelog formatted timestamp at the point."
  (interactive)
  (insert (format-time-string "%a, %d %b %Y %H:%M:%S %z")))

(defun mg/ensure-packages (&rest packages)
  "Ensure that each package in the given list of packages is installed."
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
         nil
       (package-install package)
       (require package)))
   packages))

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
 'company-inf-python
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

(bbdb-initialize)

(setq
 diary-file "~/.org/diary"
 user-full-name "Michael Gregson"
 org-agenda-files '("~/.org/")
 org-default-notes-file "~/.org/refile.org"
 org-tags-column -110
 org-log-done 'time
 org-agenda-tags-column -110
 org-agenda-include-diary t
 org-agenda-window-setup t
 org-agenda-restore-windows-after-quit t
 org-clock-persist t
 org-clock-out-remove-zero-time-clocks t
 org-drawers '("PROPERTIES" "LOGBOOK")
 org-log-into-drawer t
 org-todo-keywords '((sequence "TODO(t)"
                               "NEXT(n)"
                               "STARTED(s!)"
                               "HOLD(h!)"
                               "|"
                               "DONE(d!/!)")
                     (sequence "BLOCKED(b@/!)"
                               "|"
                               "CANCELLED(c@/!)")
                     (sequnce "CALL"
                              "INCALL(!)"
                              "|"
                              "LOG(!)"))
 org-capture-templates '(("t" "Todo Item"
                          entry
                          (file+headline "~/.org/refile.org" "Todo")
                          (file "~/.org/templates/capture/todo-item"))
                         ("c" "Phone Call"
                          entry
                          (file+headline "~/.org/refile.org" "Calls")
                          (file "~/.org/templates/capture/call")))
 bbdb-file "~/.emacs.d/bbdb"
 bbdb-offer-save 1
 bbdb-use-opo-up t
 bbdb-electric-p t
 bbdb-popup-target-lines 1
 bbdb-dwim-net-address-allow-redundancy t
 bbdb-quiet-about-name-mismatches 1
 bbdb-always-add-address t
 bbdb-canonicalize-redundant-nets-p t
 bbdb-completion-type nil
 bbdb-complete-name-allow-cycling t
 bbdb-message-caching-enabled t
 bbdb-use-alternate-names t
 bbdb-elided-display t
 bbdb/mail-auto-create-b 'bbdb-ignore-some-messages-hook
 bbdb-ignore-sim-messages-alist '(("From" . "no.?reply\\|DAEMON\\|daemon\\|facebookmail\\|twitter\\|exec\\|syscom\\|exec-syscom\\|jira\\|groups\\.facebook")))


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
(define-key company-active-map (kbd "<C-return>") 'company-complete-selection)

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

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-mode-hook 'subword-mode)
(add-hook 'clojure-mode-hook 'cider-mode)

(global-set-key (kbd "C-x j") 'dka/jump-to-window)
(global-set-key (kbd "C-c r") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-x g") 'magit-status)

(add-hook 'inferior-haskell-mode-hook 'ghci-completion-mode)
(add-hook 'haskell-mode-hook 'haskell-indent-mode)
