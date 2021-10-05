#!/bin/bash

# Set Session Name
SESSION='IDE'
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

# Only create tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]
then
    # Start New Session with our name
    tmux new-session -d -s $SESSION

    # Name first pane and start fish-shell
    tmux rename-window -t 0 'IDE'
    tmux send-keys -t 'IDE' 'fish' C-m 'clear' C-m 'nvim'
    tmux split-window -v -p 20
    tmux send-keys -t 'IDE' 'fish' C-m 'clear' C-m
    tmux split-window -h -p 66
    tmux send-keys -t 'IDE' 'fish' C-m 'clear' C-m
    tmux split-window -h -p 50
    tmux send-keys -t 'IDE' 'fish' C-m 'clear' C-m

    # Setup an additional shell
    tmux new-window -t $SESSION:1 -n 'Terminal'
    tmux send-keys -t 'Terminal' 'fish' C-m 'clear' C-m
fi

tmux attach-session -t $SESSION:0