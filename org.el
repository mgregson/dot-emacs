(setq
 diary-file "~/.emacs.d/org/diary"
 user-full-name "Michael Gregson"
 org-agenda-files '("~/.emacs.d/org/")
 org-default-notes-file "~/.emacs.d/org/refile.org"
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
                          (file "~/.org/templates/capture/call"))))
