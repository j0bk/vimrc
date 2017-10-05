""""""""""""""""""""
" Juan Colacelli's vimrc
""""""""""""""""""""
" Source: https://github.com/juancolacelli/vimrc
" Maintainer: Juan Colacelli <http://juan.colacelli.com>

""""""""""""""""""""
" General
""""""""""""""""""""
se nocp             " No compatible
se enc=utf8         " Encoding
se spell            " Spelling
se spl=en           " Spelling languages
se wmnu             " Terminal autocomplete
se wim=list:longest " Long terminal autocomplete

" Indentation
filetype plugin indent on " File type indentation
se shiftwidth=2           " 2 spaces by indent
se ts=2                   " 2 spaces by tab
se ai  " Auto indent
se ci  " Copy indent
se et  " Spaces instead of tabs
se pi  " Preserve indent
se si  " Tabs and spaces are the same
se sta " Start indentation based on the start of the line

" Search
se hls " Highlight current search
se ic  " Ignore case sensitive
se is  " Incremental search
se scs " Ignore case if search is lowercase

" Backup
se bdir^=~/.vim/.backup//
se backup

" Swap
se dir^=~/.vim/.swap//
se swf

" Edition
se ar  " Auto-reload on change
se hid " Save undo on exit
se js  " Join spaces
se nu  " Show line number
se rnu " Show relative line numbers
se sc  " Show partial commands
se sm  " Show matching key
se confirm " Confirm changes on exit
se wrap    " Cut lines if they exceed right margin
se cuc=80              " Right margin
se history=1000        " Command history
se lsp=0               " Remove spaces between lines
se mat=10              " Highlight timer
se mps=(:),{:},[:],<:> " Highlight by pairs
se nuw=4               " Line number max 9999
se ul=1000             " 1000 undo

" Beep
se noeb " Visual bell
se vb   " Visual bell

" Mouse
se mouse=a " Mouse enabled
se mh      " Hide mouse when writing

" General
se backspace=indent,eol,start " Flexible erasing
se more                       " Enable more results

" Remove trailing spaces on save
au BufWritePre * :%s/\s\+$//e

""""""""""""""""""""
" Functions
""""""""""""""""""""
" Middle button pastes
im <MouseMiddle> <esc>"*p"
nm <MouseMiddle> <esc>"*p"

""""""""""""""""""""
" Auto-close
""""""""""""""""""""
" Close automatically
ino ( ()<left>
ino { {}<left>
ino [ []<left>
ino < <><left>
ino " ""<left>
ino ' ''<left>

""""""""""""""""""""
" Commands
""""""""""""""""""""
" Common errors
com! WQ wq
com! Wq wq
com! W w
com! Q q
no ; :
let maplocalleader=',' " Macros start
let mapleader=','      " Macros start
let g:mapleader=','    " Macros start

" Save with sudo
cm w!! w !sudo tee % >/dev/null

""""""""""""""""""""
" Movement
""""""""""""""""""""
" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

""""""""""""""""""""
" Make
""""""""""""""""""""
" F5 make
nno <F5> :w<cr> :silent make<cr>
ino <F5> <Esc>:w<cr>:silent make<cr>
vno <F5> :<C-U>:w<cr>:silent make<cr>

""""""""""""""""""""
" Toggle cases
""""""""""""""""""""
" F6 under_score to camelCase
nno <F6> :%s/_\(\l\)/\u\1/gc<cr>
" Shift F6 camelCase to under_score
nno <S-F6> :%s/\(\l\)\(\u\)/\1\_\l\2/gc<cr>

""""""""""""""""""""
" Fold
""""""""""""""""""""
se fdm=indent " Fold based on indent
se fdn=10     " Deepest fold is 10 levels
se nofen      " Don't fold by default

""""""""""""""""""""
" Colors
""""""""""""""""""""
syn on " Highlight syntax
se cul " Highlight current line
se cuc " Highlight current column
se background=dark " Dark background
colo gruvbox       " Color scheme
se ls=2            " Show statusbar

if has("gui_running")
  se go-=T  " Disable toolbar
  se go-=R  " Disable right scrollbar
  se go-=r  " Disable right scrollbar
  se go-=L  " Disable left scrollbar
  se transparency=5 " Transparency 5%
endif

""""""""""""""""""""
" .vimrc
""""""""""""""""""""
" Open .vimrc
map <leader>v :e! ~/.vimrc<cr>"

" Reopen .vimrc when saved
au! bufwritepost .vimrc so ~/.vimrc"

""""""""""""""""""""
" Minpac (packages)
""""""""""""""""""""
if exists('*minpac#init')
  cal minpac#init()

  " Autocomplete
  cal minpac#add('Shougo/neocomplete.vim')

  " Git
  cal minpac#add('airblade/vim-gitgutter')
  cal minpac#add('tpope/vim-fugitive')

  " Syntax color
  cal minpac#add('aklt/plantuml-syntax')
  cal minpac#add('digitaltoad/vim-jade')

  " Syntax
  cal minpac#add('godlygeek/tabular')
  cal minpac#add('tpope/vim-commentary')
  cal minpac#add('tpope/vim-endwise')
  cal minpac#add('tpope/vim-surround')

  " Debug
  cal minpac#add('scrooloose/syntastic')

  " Bar
  cal minpac#add('vim-airline/vim-airline')

  " Show marks
  cal minpac#add('kshenoy/vim-signature')

  " Searching
  cal minpac#add('ctrlpvim/ctrlp.vim')
  cal minpac#add('majutsushi/tagbar')
  cal minpac#add('scrooloose/nerdtree')

  " Colorscheme
  cal minpac#add('morhetz/gruvbox')

  " Icons
  cal minpac#add('tiagofumo/vim-nerdtree-syntax-highlight')
  cal minpac#add('ryanoasis/vim-devicons')
endif

""""""""""""""""""""
" Plugins
""""""""""""""""""""
" Airline
let g:airline#extensions#tabline#enabled=1         " Tabline
let g:airline#extensions#tabline#show_buffers=0    " Disable buffers
let g:airline#extensions#tabline#show_splits=0     " Disable buffers
let g:airline#extensions#tabline#show_tabs=1
let g:airline#extensions#tabline#show_tab_type = 0 " Hide right tab indicator
let g:airline#extensions#tabline#show_close_button = 0

se nosmd                                     " Removes the mode duplication -- INSERT --
let g:airline_powerline_fonts=1
let g:airline_skip_empty_sections=1          " Remove angle at the end
let g:airline_detect_spell=0                 " Remove SPELL
let g:airline_theme='gruvbox'
let g:airline_mode_map={
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ '' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '' : 'S',
    \ }

" CtrlP
let g:ctrlp_custom_ignore='\v[\/](node_modules|target|dist|bower_components)|(\.(swp|ico|git|svn))$'

" DevIcons
if has("gui_running")
  se gfn=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ \Complete:h11
endif
au! bufwritepost .vimrc cal webdevicons#hardRefresh()

" GitGutter
hi clear SignColumn

" NeoComplete
let g:neocomplete#enable_at_startup=1
ino <expr> <C-j> ((pumvisible())?("\<C-n>"):("j"))
ino <expr> <C-k> ((pumvisible())?("\<C-p>"):("k"))

" NERDTree
nno <tab> :NERDTreeToggle<cr>
let NERDTreeMinimalUI=1

" Tabularize
vno <tab> :Tabularize<cr>
vno <C-tab> :Tabularize /=<cr>
vno <S-tab> :Tabularize /:<cr>

" Tagbar
nno <F2> :Tagbar<cr>
let g:tagbar_compact=1
let g:tagbar_indent=0

" Syntastic
hi SyntasticErrorLine guibg=#4C1C14
hi SyntasticWarningLine guibg=#4B3F15
