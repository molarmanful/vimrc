source-file ~/vimrc/d.tmux

set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-pain-control'
set -g @plugin 'tmux-plugins/tmux-sessionist'
set -g @plugin 'nhdaly/tmux-better-mouse-mode'

setw -g mode-keys vi
set -g default-terminal "xterm-256color"
set -g status off
set -g history-limit 99999
set -g prefix C-a
set -g mouse on
set -sg escape-time 0
set -g @scroll-down-exit-copy-mode 'on'
set -g @scroll-without-changing-pane 'on'
set -g @scroll-in-moused-over-pane 'on'
set -g @emulate-scroll-for-no-mouse-alternate-buffer 'on'
set -g mouse on

bind-key C-a send-prefix
bind r source-file ~/.tmux.conf
bind C-x confirm-before -p "respawn-pane #P? (y/n)" "respawn-pane -k"
