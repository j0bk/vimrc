vimrc
===

Screenshot
---
![Screenshot](https://i.imgur.com/Zqz3toU.png)


Installation
---
**Warning!: Backup your ~/.vim folder and ~/.vimrc file before running the following commands**

Linux / Mac

    cd ~
    git clone git://github.com/juancolacelli/vimrc.git
    mv vimrc .vim
    ln -s ~/.vim/vimrc .vimrc

    mkdir -p ~/.vim/.backup ~/.vim/.swap ~/.vim/pack/minpac/opt
    cd ~/.vim/pack/minpac/opt
    git clone https://github.com/k-takata/minpac.git

    vim
    :pa minpac
    :so ~/.vimrc
    :cal minpac#update()
    :q

Libraries
---
**Ctags**

Linux

    sudo apt-get install exuberant-ctags

Mac

    brew install ctags

Fonts
---
**Powerline Nerd Fonts**

Linux

    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf

Mac

    cd ~/Library/Fonts
    curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf

Common errors
---
**Icons shown in half**

If you are using MacVim go to Preferences > Advanced and uncheck Use Core Text renderer

**Icons broken in terminal**

If you are using Iterm2 go to Preferences > Profiles > Text and change the Non-ASCII Font to Droid Sans Mono for Powerline Nerd Font Complete
