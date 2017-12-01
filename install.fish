#!/bin/fish

set homefiles '.tmux.conf' '.nvimrc' '.gitconfig'

rsync -r .config ~

for i in homefiles;
    rsync $i ~
end
