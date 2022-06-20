rename-window 'Editor'
split-window -h
resize-pane -R 40
split-window -v
new-window
rename-window 'Tests'
new-window
rename-window 'Workzone'
new-window
rename-window Sandbox
split-window -h
resize-pane -R 55
select-window -t 1
new-window
rename-window Devzone
new-window
rename-window Playground
new-window -c ~/.config/nvim
rename-window Configs
