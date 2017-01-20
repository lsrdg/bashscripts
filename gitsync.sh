#!/bin/bash

# init=~/.config/nvim/init.vim

read -p 'What should be synced? ' sync_target

if [ $sync_target == 'init' ]
then
    cp ~/.config/nvim/init.vim ~/git/dotfiles/neovim/init.vim

    echo Done! init.vim is ready!
elif [ $sync_target == 'openbox' ]
then
    cp -r ~/.config/openbox/ ~/git/dotfiles/

    echo Done! rc.xml is ready!

elif [ $sync_target == 'bash' ]
then
    cp ~/.bashrc ~/git/dotfiles/bash/
    cp ~/.bash_profile ~/git/dotfiles/bash/

    echo Done! Bash files are ready!

elif [ $sync_target == 'scripts' ]
then
    ls -a
    read -p 'Which one? ' sync_script
    echo ~/scripts ~/git/bashscripts | xargs -n 1 cp $sync_script
	if [ $sync_script = 'resunp.sh' ]
	then
	    mv ~/git/bashscripts/resunp.sh ~/git/bashscripts/Responsivebp-unpacker.sh
	fi
    echo Done!
fi
