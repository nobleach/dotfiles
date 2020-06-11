rename-window 'User Service'
send-keys 'us' C-m
split-window -h
resize-pane -R 60
split-window -v
new-window
rename-window Tests
new-window
rename-window 'clearing-service'
send-keys 'cle' C-m
split-window -h
resize-pane -R 60
split-window -v
select-window -t 1
select-pane -L
new-window
rename-window 'PDF Service'
send-keys 'pdf' C-m
split-window -h
resize-pane -R 60
split-window -v
select-window -t 0
new-window
rename-window 'New Onboarding'
split-window -h
resize-pane -R 60
split-window -v
select-window -t 0
new-window
rename-window Sandbox
split-window -h
resize-pane -R 55
select-window -t 1
