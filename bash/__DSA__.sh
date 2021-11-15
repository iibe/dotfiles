#!/bin/bash

# Constants
SESSION='DSA'
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

# Create Tmux session only if it doesn't exists
if [ "$SESSIONEXISTS" = "" ]
then
    # Create editor window
    tmux new-session -d -s $SESSION
    # Rename window
    tmux rename-window -t 0 'Editor'
    # Pane layout
    tmux split-window -h -p 25
    
    tmux send-keys -t 'Editor' 'fish' C-m 'clear' C-m
    tmux split-window -v -p 50
    tmux send-keys -t 'Editor' 'fish' C-m 'clear' C-m
    tmux select-pane -L

    tmux send-keys -t 'Editor' 'fish' C-m 'clear' C-m 'nvim' C-m
    
    # Create terminal window
    tmux new-window -t $SESSION:1 -n 'Terminal'
    # Pane layout
    tmux split-window -v -p 50

    tmux send-keys -t 'Terminal' 'fish' C-m 'clear' C-m
    tmux split-window -h -p 50
    tmux send-keys -t 'Terminal' 'fish' C-m 'clear' C-m
    tmux select-pane -U

    tmux send-keys -t 'Terminal' 'fish' C-m 'clear' C-m
    tmux split-window -h -p 50
    tmux send-keys -t 'Terminal' 'fish' C-m 'clear' C-m

    tmux select-pane -L
fi

# Attach first Tmux session
tmux attach-session -t $SESSION:0
