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

### Vim
```bash
git clone https://gitlab.com/juancolacelli/vimrc.git ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.vim/vimrc ~/.vimrc
```

```viml
:PlugInstall
```

### NeoVim

```bash
git clone https://gitlab.com/juancolacelli/vimrc.git ~/.vim
mkdir -p ~/.config/nvim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.config/nvim/vimrc ~/.vimrc
```

```viml
:PlugInstall
```

### Post install

```viml
:CocConfig
```

```
{
  "suggest.noselect": false,
  "coc.preferences.formatOnSaveFiletypes": ["css", "markdown", "vue"],
  "languageserver": {
    "ccls": {
      "command": "ccls",
      "filetypes": [
        "c",
        "cpp",
        "objc",
        "objcpp"
      ],
      "rootPatterns": [
        ".ccls",
        "compile_commands.json",
        ".vim/",
        ".git/",
        ".hg/"
      ],
      "initializationOptions": {
        "cache": {
          "directory": "/tmp/ccls"
        }
      }
    }
  }
}
```

If you are working with C++17 you need to create a file .ccls in your project with the following content:

```
clang++
%h %hpp %cpp -std=c++17
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

## Update plugins
```viml
:PlugUpgrade
:PlugUpdate
:CocUpdate
```

## Plugins

- [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [ap/vim-css-color](https://github.com/ap/vim-css-color)
- [easymotion/vim-easymotion](https://github.com/easymotion/vim-easymotion)
- [godlygeek/tabular](https://github.com/godlygeek/tabular)
- [habamax/vim-godot](https://github.com/habamax/vim-godot)
- [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)
- [junegunn/vim-plug](https://github.com/junegunn/vim-plug)
- [ludovicchabant/vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)
- [majutsushi/tagbar](https://github.com/majutsushi/tagbar)
- [mattn/emmet-vim](https://github.com/mattn/emmet-vim)
- [morhetz/grubvox](https://github.com/morhetz/gruvbox)
- [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)
- [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)
- [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
- [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)
- [tiagofumo/vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight)
- [tpope/vim-abolish](https://github.com/tpope/vim-abolish)
- [tpope/vim-commentary](https://github.com/tpope/vim-commentary)
- [tpope/vim-surround](https://github.com/tpope/vim-surround)
- [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)
- [vimsence/vimsence](https://github.com/vimsence/vimsence)
- [vimwiki/vimwiki](https://github.com/vimwiki/vimwiki)
- [xuyuanp/nerdtree-git-plugin](https://github.com/xuyuanp/nerdtree-git-plugin)

[![vim](https://www.vim.org/images/vim_created.gif)](https://www.vim.org)
