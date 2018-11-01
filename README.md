[![Vim](https://www.vim.org/images/vim_editor.gif)](https://www.vim.org)

# Juan Colacelli's vimrc

- [Screenshot](#screenshot)
- [Requirements](#requirements)
- [Installation](#installation)
- [Dependencies](#dependencies)
- [Packages](#packages)

## Screenshot

![Screenshot](https://i.imgur.com/LiMCaL5.png)

## Requirements

**Terminal with 256 color support enabled**

```bash
export TERM=xterm-256color
```

**Vim 8+**

[Vim download](https://www.vim.org/download.php)

**Required font installed**

[DejaVu Sans Mono Nerd Font Complete Mono.ttf](https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.ttf)

## Installation

**Warning!: Backup your config files before running the following commands**


**Vim**

```bash
git clone https://gitlab.com/juancolacelli/vimrc.git ~/.vim
git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt

ln -s ~/.vim/vimrc ~/.vimrc
```

```viml
vim
:PackUpdate
```

**NeoVim**

```bash
git clone https://gitlab.com/juancolacelli/vimrc.git ~/.vim
git clone https://github.com/k-takata/minpac.git ~/.config/nvim/pack/minpac/opt

mkdir -p ~/.config/nvim
ln -s ~/.vim/vimrc ~/.config/nvim/init.vim
```

```viml
nvim
:PackUpdate
```

## Dependencies

```bash
npm i -g prettier-eslint
```

## Packages

- [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [aklt/plantuml-syntax](https://github.com/aklt/plantuml-syntax)
- [ap/vim-css-color](https://github.com/ap/vim-css-color)
- [ctrlpvim/ctrlp](https://github.com/ctrlpvim/ctrlp)
- [diepm/vim-rest-console](https://github.com/diepm/vim-rest-console)
- [digitaltoad/vim-pug](https://github.com/digitaltoad/vim-pug)
- [godlygeek/tabular](https://github.com/godlygeek/tabular)
- [morhetz/grubvox](https://github.com/morhetz/gruvbox)
- [posva/vim-vue](https://github.com/posva/vim-vue)
- [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)
- [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
- [Shougok-takata/minpac](https://github.com/Shougok-takata/minpac)
- [tiagofumo/vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight)
- [tpope/rails.vim](https://github.com/tpope/rails.vim)
- [tpope/vim-abolish](https://github.com/tpope/vim-abolish)
- [tpope/vim-commentary](https://github.com/tpope/vim-commentary)
- [tpope/vim-surround](https://github.com/tpope/vim-surround)
- [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)
- [vimwiki/vimwiki](https://github.com/vimwiki/vimwiki)
- [w0rp/ale](https://github.com/w0rp/ale)

[![vim](https://www.vim.org/images/vim_created.gif)](https://www.vim.org)
