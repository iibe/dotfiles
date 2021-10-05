
#!/bin/bash

tmux kill-session -t 'IDE'

SESSION='IDE'
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

EDITOR='VIM'
SHELL='FISH'

if [ "$SESSIONEXISTS" = "" ]
then
    # EDITOR:
    tmux new-session -s $SESSION -n $EDITOR
    tmux send-keys -t $EDITOR 'fish' C-m 'clear' C-m
    tmux split-window -v -l 10
    tmux send-keys -t $EDITOR 'fish' C-m 'clear' C-m
    tmux split-window -h -p 66
    tmux send-keys -t $EDITOR 'fish' C-m 'clear' C-m
    tmux split-window -h -p 50
    tmux send-keys -t $EDITOR 'fish' C-m 'clear' C-m

    # SHELL:
    tmux new-window -t $SESSION:1 -n $SHELL 
    tmux send-keys -t $SHELL 'fish' C-m 'clear' C-m
    tmux split-window -v -p 50
    tmux send-keys -t $SHELL 'fish' C-m 'clear' C-m
    tmux split-window -h -p 50
    tmux send-keys -t $SHELL 'fish' C-m 'clear' C-m
fi

tmux attach-session -t $SESSION:0