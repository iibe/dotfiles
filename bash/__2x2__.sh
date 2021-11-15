#!/bin/bash

# Constants
SESSION='2x2'
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

# Create Tmux session only if it doesn't exists
if [ "$SESSIONEXISTS" = "" ]
then
    # Create terminal session
    tmux new-session -d -s $SESSION
    # Rename window
    tmux rename-window -t 0 'Terminal'
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
