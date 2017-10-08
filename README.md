Juan Colacelli's vimrc
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
    :PackUpdate

Dependencies
---
**Ctags**

Linux

    sudo apt-get install exuberant-ctags

Mac

    brew install ctags

**Powerline Nerd Fonts**

Linux

    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf

Mac

    cd ~/Library/Fonts
    curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf

Packages
---
- [commentary.vim](https://github.com/tpope/vim-commentary)
- [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
- [endwise.vim](https://github.com/tpope/vim-endwise)
- [fugitive.vim](https://github.com/tpope/vim-fugitive)
- [grubvox](https://github.com/morhetz/gruvbox)
- [MatchTagAlways.vim](https://github.com/Valloric/MatchTagAlways)
- [minpac](https://github.com/Shougok-takata/minpac)
- [neocomplete](https://github.com/Shougo/neocomplete.vim)
- [NERDTree](https://github.com/scrooloose/nerdtree)
- [PlantUML Syntax](https://github.com/aklt/plantuml-syntax)
- [Signify](https://github.com/mhinz/vim-signify)
- [Startify](https://github.com/mhinz/vim-startify)
- [surround.vim](https://github.com/tpope/vim-surround)
- [Syntastic](https://github.com/scrooloose/syntastic)
- [Tabular](https://github.com/godlygeek/tabular)
- [Tagbar](https://github.com/majutsushi/tagbar)
- [VimDevIcons](https://github.com/ryanoasis/vim-devicons)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-lastplace](https://github.com/farmergreg/vim-lastplace)
- [vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight)
- [vim-pug](https://github.com/digitaltoad/vim-pug)
- [vim-signature](https://github.com/kshenoy/vim-signature)

Common errors
---
**Icons shown in half**

If you are using MacVim go to Preferences > Advanced and uncheck Use Core Text renderer

**Icons broken in terminal**

If you are using Iterm2 go to Preferences > Profiles > Text and change the Non-ASCII Font to Droid Sans Mono for Powerline Nerd Font Complete
