#!/usr/bin/fish

set homefiles '.tmux.conf' '.nvimrc' '.gitconfig'

rsync -r ~/.config/fish .config/
rsync -r ~/.config/git .config/

for i in $homefiles;
    rsync ~/$i .
end
