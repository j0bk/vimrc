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
se noeb vb                    " Visual bell
se spell spl=en               " Spelling
se wmnu wim=list:longest      " Long terminal autocomplete
se re=1                       " Regexp engine defined for perfomance issues

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
se cc=80 nowrap                 " Right margin and cut lines if exceed
se lsp=0                      " Remove spaces between lines
se mat=5                      " Highlight timer
se mps=(:),{:},[:],<:>        " Highlight by pairs
se nuw=4                      " Line number max 9999
se hi=1000 ul=1000            " Command and undo history
au BufWritePre * :%s/\s\+$//e " Remove trailing spaces on save

" GUI
if has("gui_running")
  se go-=T  " Disable toolbar
  se go-=R  " Disable right scrollbar
  se go-=r  " Disable right scrollbar
  se go-=L  " Disable left scrollbar
en

""""""""""""""""""""""""""""""""""""""""
" Auto-close
""""""""""""""""""""""""""""""""""""""""
" Close automatically
ino ( ()<LEFT>
ino { {}<LEFT>
ino [ []<LEFT>
ino < <><LEFT>
ino " ""<LEFT>
ino ' ''<LEFT>

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
se cul cuc         " Highlight current line and column

""""""""""""""""""""""""""""""""""""""""
" .vimrc
""""""""""""""""""""""""""""""""""""""""
" Reopen .vimrc when saved
au! bufwritepost .vimrc so $MYVIMRC

""""""""""""""""""""""""""""""""""""""""
" Minpac (packages)
""""""""""""""""""""""""""""""""""""""""
com! PackUpdate pa minpac | so $MYVIMRC | cal minpac#update()
com! PackClean pa minpac | so $MYVIMRC | cal minpac#clean()

if exists('*minpac#init')
  cal minpac#init()

  cal minpac#add('airblade/vim-gitgutter')
  cal minpac#add('aklt/plantuml-syntax')
  cal minpac#add('ap/vim-css-color')
  cal minpac#add('ctrlpvim/ctrlp.vim')
  cal minpac#add('digitaltoad/vim-jade')
  cal minpac#add('godlygeek/tabular')
  cal minpac#add('k-takata/minpac', {'type': 'opt'})
  cal minpac#add('morhetz/gruvbox')
  cal minpac#add('posva/vim-vue')
  cal minpac#add('ryanoasis/vim-devicons')
  cal minpac#add('scrooloose/nerdtree')
  cal minpac#add('tiagofumo/vim-nerdtree-syntax-highlight')
  cal minpac#add('tpope/vim-abolish')
  cal minpac#add('tpope/vim-commentary')
  cal minpac#add('tpope/vim-rails')
  cal minpac#add('tpope/vim-surround')
  cal minpac#add('vim-airline/vim-airline')
  cal minpac#add('w0rp/ale')
en

""""""""""""""""""""""""""""""""""""""""
" Packages
""""""""""""""""""""""""""""""""""""""""
" Airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

" Asynchronous Lint Engine
let g:ale_lint_on_text_changed=0
let g:ale_lint_on_save=1
let g:ale_sign_column_always=1

let g:ale_fixers={}
let g:ale_fixers['javascript']=['prettier-eslint']
let g:ale_fixers['vue']=['prettier-eslint']

let g:ale_linters={}
let g:ale_linters['javascript']=['prettier-eslint']
let g:ale_linters['vue']=['prettier-eslint']

" CtrlP
let g:ctrlp_custom_ignore='\v[\/](node_modules|target|dist|bower_components)|(\.(swp|ico|git|svn))$'

" Gruvbox
colo gruvbox

""""""""""""""""""""""""""""""""""""""""
" Autocomplete
""""""""""""""""""""""""""""""""""""""""
" Insert tab or autocomplete
" http://vim.wikia.com/wiki/Autocomplete_with_TAB_when_typing_words
fu! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    retu "\<C-n>"
  else
    retu "\<TAB>"
  en
endf

""""""""""""""""""""""""""""""""""""""""
" Shortcuts
""""""""""""""""""""""""""""""""""""""""
" F6 under_score to camelCase
nno <F6> :%s/_\(\l\)/\u\1/gc<CR>
" Shift F6 camelCase to under_score
nno <S-F6> :%s/\(\l\)\(\u\)/\1\_\l\2/gc<CR>
" Reident
map <LEADER>r gg=G<CR>

" Autocomplete
ino <Tab> <C-r>=Tab_Or_Complete()<CR>

" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Open .vimrc
map <LEADER>v :e! $MYVIMRC<cr>"

" NERDTree
nno <TAB> :NERDTreeToggle<CR>
