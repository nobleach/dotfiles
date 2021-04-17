rename-window 'Editor'
split-window -h
resize-pane -R 40
split-window -v
new-window
rename-window 'Tests'
new-window
split-window -h
split-window -h
select-layout even-horizontal
rename-window 'Local Servers'
new-window
rename-window Sandbox
split-window -h
resize-pane -R 55
select-window -t 1
