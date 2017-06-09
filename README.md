vimrc
===

Screenshot
---
![Screenshot](https://i.imgur.com/JOEqYH7.png)


Installation
---
    cd ~
    git clone git://github.com/juancolacelli/vimrc.git
    mv vimrc .vim
    ln -s .vim/vimrc .vimrc
    vim +PluginInstall +qall

Libraries
---
**Ctags**

    sudo apt-get install exuberant-ctags

    or...

    brew install ctags

Fonts
---
**Powerline**

    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf

    or...

    cd ~/Library/Fonts
    curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf

Common errors
---
**Icons shown in half**

If you are using MacVim go to Preferences > Advanced and uncheck Use Core Text renderer

**Icons broken in terminal**

If you are using Iterm2 go to Preferences > Profiles > Text and change the Non-ASCII Font to Droid Sans Mono for Powerline Nerd Font Complete
