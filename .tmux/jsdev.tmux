rename-window 'Editor'
split-window -h
resize-pane -R 40
split-window -v
new-window
rename-window 'Tests'
new-window
split-window -h -c ~/Sites/videopeel-web-api
split-window -h -c ~/Sites/videopeel-web-api
select-layout even-horizontal
rename-window 'Local Servers'
new-window
rename-window Sandbox
split-window -h
resize-pane -R 55
select-window -t 1
new-window
rename-window AWS
split-window -h
new-window
rename-window Playground
new-window -c ~/.config/nvim
rename-window Configs
