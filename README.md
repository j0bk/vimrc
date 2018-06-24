[![Vim](https://www.vim.org/images/vim_editor.gif)](https://www.vim.org)

Juan Colacelli's vimrc
===

- [Screenshot](#screenshot)
- [Installation](#installation)
- [Dependencies](#dependencies)
- [Packages](#packages)

Screenshot
---

![Screenshot](https://i.imgur.com/qcdhmoX.png)

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

**Linux**

    # prettier-eslint
    npm i -g prettier-eslint

**Mac**

    # prettier-eslint
    npm i -g prettier-eslint

Packages
---

- [Asynchronous Lint Engine](https://github.com/w0rp/ale)
- [Completor](https://github.com/maralla/completor.vim)
- [PlantUML Syntax](https://github.com/aklt/plantuml-syntax)
- [Tabular](https://github.com/godlygeek/tabular)
- [abolish.vim](https://github.com/tpope/vim-abolish)
- [commentary.vim](https://github.com/tpope/vim-commentary)
- [grubvox](https://github.com/morhetz/gruvbox)
- [minpac](https://github.com/Shougok-takata/minpac)
- [rails.vim](https://github.com/tpope/rails.vim)
- [surround.vim](https://github.com/tpope/vim-surround)
- [vim-pug](https://github.com/digitaltoad/vim-pug)
- [vim-vue](https://github.com/posva/vim-vue)

[![vim](https://www.vim.org/images/vim_created.gif)](https://www.vim.org)
