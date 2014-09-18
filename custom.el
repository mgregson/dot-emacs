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
