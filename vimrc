""""""""""""""""""""""""""""""""""""""""
" Juan Colacelli's vimrc
""""""""""""""""""""""""""""""""""""""""
" Source: https://gitlab.com/juancolacelli/vimrc
" Maintainer: Juan Colacelli <https://colacelli.com>

""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""
se nocp      " No compatible
se enc=utf-8 " Encoding

se backspace=indent,eol,start " Flexible erasing
se more                       " Enable more results
se mouse=a mh                 " Mouse enabled and hidden when writing
se nobackup noswf             " Disable backup and swap
se noeb novb                  " Disable bell
se spell spl=en               " Spelling
se wmnu wim=list:longest      " Long terminal autocomplete
se re=1                       " Regexp engine defined for perfomance issues
se tf lz                      " Increments performance

" Indentation
filetype plugin indent on " File type indentation
se ai ci pi sta           " Auto, copy and preserve indent
se et si sw=2 ts=2        " Use 2 spaces instead of tabs

" Search
se hls    " Highlight current search
se ic scs " Ignore case sensitive if search is lowercase
se is     " Incremental search

" Edition
se ar                         " Auto-reload on change
se hid                        " Save undo on exit
se js                         " Join spaces
se nu rnu                     " Show line number and relatives
se sc                         " Show partial commands
se sm                         " Show matching key
se confirm                    " Confirm changes on exit
se cc=80 nowrap               " Right margin and cut lines if exceed
se lsp=0                      " Remove spaces between lines
se mat=5                      " Highlight timer
se mps=(:),{:},[:],<:>        " Highlight by pairs
se nuw=4                      " Line number max 9999
se hi=1000 ul=1000            " Command and undo history
se ut=300                     " Update time
au BufWritePre * :%s/\s\+$//e " Remove trailing spaces on save

" GUI
if has("gui_running")
  se gfn=DejaVu\ Sans\ Mono\ Nerd\ Font\ Complete\ Mono
  se go-=T  " Disable toolbar
  se go-=R  " Disable right scrollbar
  se go-=r  " Disable right scrollbar
  se go-=L  " Disable left scrollbar
en

""""""""""""""""""""""""""""""""""""""""
" Commands
""""""""""""""""""""""""""""""""""""""""
" Common errors
com! WQ wq
com! Wq wq
com! W w
com! Q q
no ; :
let g:mapleader=','

" Save with sudo
cm w!! w !sudo tee % >/dev/null

""""""""""""""""""""""""""""""""""""""""
" Fold
""""""""""""""""""""""""""""""""""""""""
se fdm=indent " Fold based on indent
se fdn=10     " Deepest fold is 10 levels
se nofen      " Don't fold by default

""""""""""""""""""""""""""""""""""""""""
" Colors
""""""""""""""""""""""""""""""""""""""""
syn on             " Highlight syntax
se background=dark " Dark background

""""""""""""""""""""""""""""""""""""""""
" .vimrc
""""""""""""""""""""""""""""""""""""""""
" Reopen .vimrc when saved
au! bufwritepost .vimrc so $MYVIMRC

""""""""""""""""""""""""""""""""""""""""
" Plugins (vim-plug)
""""""""""""""""""""""""""""""""""""""""
cal plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'xuyuanp/nerdtree-git-plugin'

call plug#end()

""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""
" Airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_splits=0
let g:airline#extensions#tabline#show_buffers=0
let g:airline_powerline_fonts=1

" Coc
let g:coc_global_extensions=[
      \'coc-css',
      \'coc-eslint',
      \'coc-json',
      \'coc-pairs',
      \'coc-phpls',
      \'coc-prettier',
      \'coc-snippets',
      \'coc-tsserver',
      \'coc-ultisnips',
      \]

nm <Silent> gd <Plug>(coc-definition)
nm <Silent> gy <Plug>(coc-type-definition)
nm <Silent> gi <Plug>(coc-implementation)
nm <Silent> gr <Plug>(coc-references)
ino <Silent><Expr> <Cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<Cr>\<C-r>=coc#on_enter()\<Cr>"
im <C-l> <Plug>(coc-snippets-expand)

" EasyMotion
map <Leader>s <Plug>(easymotion-sn)

" FZF
se rtp+=~/.fzf
nno <C-p> :Files<Cr>
nno <Leader>b :Buffers<Cr>
nno <Leader>h :History<Cr>
nno <Leader>t :BTags<Cr>
nno <Leader>T :Tags<Cr>

" Gutentags
let g:gutentags_project_root=['.git', '.svn', '.root', '.hg', '.project']
let g:gutentags_ctags_tagfile='.tags'
let s:vim_tags=expand('~/.cache/tags')

" Gruvbox
colo gruvbox

" Tagbar
let g:tagbar_autofocus=1
nm <F2> :TagbarToggle<Cr>

""""""""""""""""""""""""""""""""""""""""
" Shortcuts
""""""""""""""""""""""""""""""""""""""""
" F6 under_score to camelCase
nno <F6> :%s/_\(\l\)/\u\1/gc<Cr>

" Shift F6 camelCase to under_score
nno <S-F6> :%s/\(\l\)\(\u\)/\1\_\l\2/gc<Cr>

" Reident
map <Leader>r gg=G<Cr>

" Open .vimrc
map <Leader>v :e! $MYVIMRC<Cr>"

" NERDTree
nno <Tab> :NERDTreeToggle<Cr>
