(bbdb-initialize)

(setq
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
