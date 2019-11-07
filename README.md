[![Vim](https://www.vim.org/images/vim_editor.gif)](https://www.vim.org)

# Juan Colacelli's vimrc

- [Requirements](#requirements)
- [Installation](#installation)
- [Dependencies](#dependencies)
- [Plugins](#plugins)

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

```bash
git clone https://gitlab.com/juancolacelli/vimrc.git ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.vim/vimrc ~/.vimrc
```

```viml
vim
:PlugInstall
:CocInstall coc-tsserver coc-json coc-html coc-css coc-phpls coc-ultisnips
```

## Dependencies

**Prettier**

```bash
npm i -g prettier-eslint
```

**FZF**

```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

**Ripgrep**

```bash
# Arch
# sudo pacman -S ripgrep
# echo "export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'" >> ~/.bashrc

# Debian
# sudo apt-get install ripgrep
# echo "export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'" >> ~/.bashrc

# MacOS
# brew install ripgrep
# echo "export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'" >> ~/.zshrc
```

**Ctags**

```bash
# Arch
# sudo pacman -S exuberant-ctags

# Debian
# sudo apt-get install exuberant-ctags

# MacOS
# brew install ctags
```

## Plugins

- [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [ap/vim-css-color](https://github.com/ap/vim-css-color)
- [easymotion/vim-easymotion](https://github.com/easymotion/vim-easymotion)
- [godlygeek/tabular](https://github.com/godlygeek/tabular)
- [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)
- [junegunn/vim-plug](https://github.com/junegunn/vim-plug)
- [ludovicchabant/vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)
- [morhetz/grubvox](https://github.com/morhetz/gruvbox)
- [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)
- [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)
- [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
- [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)
- [tiagofumo/vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight)
- [tpope/vim-abolish](https://github.com/tpope/vim-abolish)
- [tpope/vim-commentary](https://github.com/tpope/vim-commentary)
- [tpope/vim-rails](https://github.com/tpope/vim-rails)
- [tpope/vim-surround](https://github.com/tpope/vim-surround)
- [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)
- [vimwiki/vimwiki](https://github.com/vimwiki/vimwiki)
- [w0rp/ale](https://github.com/w0rp/ale)

[![vim](https://www.vim.org/images/vim_created.gif)](https://www.vim.org)
