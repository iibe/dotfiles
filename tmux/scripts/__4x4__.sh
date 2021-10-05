#!/bin/bash

tmux
tmux split-window -v -p 75
tmux split-window -v -p 66
tmux split-window -v -p 50
tmux split-window -h -p 75
tmux split-window -h -p 66
tmux split-window -h -p 50
tmux rename-window "4x4"