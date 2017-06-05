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

    git clone https://github.com/powerline/fonts.git
    cd fonts
    ./install.sh
    cd ..
    rm -rf fonts
