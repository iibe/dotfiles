#!/bin/bash

tmux
tmux split-window -v -p 50
tmux split-window -h -p 50
tmux rename-window "2x2"