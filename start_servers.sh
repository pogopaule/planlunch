#!/bin/bash

tmux set remain-on-exit on
tmux new-session -d "vim"
tmux new-window
tmux new-window "cd /vagrant/client/; ./node_modules/.bin/ember serve"
tmux split-window -h "cd /vagrant/server; /home/vagrant/.rbenv/bin/rbenv exec rails server -b 0.0.0.0"
tmux attach
