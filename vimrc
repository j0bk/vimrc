""""""""""""""""""""""""""""""""""""""""
" Juan Colacelli's vimrc
""""""""""""""""""""""""""""""""""""""""
" Source: https://github.com/juancolacelli/vimrc
" Maintainer: Juan Colacelli <http://juan.colacelli.com>

""""""""""""""""""""""""""""""""""""""""
" Settings
""""""""""""""""""""""""""""""""""""""""
se nocp     " No compatible
se enc=unicode " Encoding

se backspace=indent,eol,start " Flexible erasing
se more                       " Enable more results
se mouse=a mh                 " Mouse enabled and hidden when writing
se nobackup noswf             " Disable backup and swap
se noeb vb                    " Visual bell
se spell spl=en               " Spelling
se wmnu wim=list:longest      " Long terminal autocomplete

" Indentation
filetype plugin indent on " File type indentation
se ai ci pi sta           " Auto, copy and preserve indent
se et si sw=2 ts=2        " Use 2 spaces instead of tabs

" Search
se hls    " Highlight current search
se ic scs " Ignore case sensitive if search is lowercase
se is     " Incremental search

" Find
se path=**
se wig+=*/.git/*,*/bower_components/*,*/node_modules/*,*/dist/*,*/target/*,*/log/*,*/tmp/*
map <C-p> :fin<space>

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
se hi=50 ul=50                " Command and undo history
au BufWritePre * :%s/\s\+$//e " Remove trailing spaces on save

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
ino ( ()<left>
ino { {}<left>
ino [ []<left>
ino < <><left>
ino " ""<left>
ino ' ''<left>

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
" Movement
""""""""""""""""""""""""""""""""""""""""
" Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

""""""""""""""""""""""""""""""""""""""""
" Toggle cases
""""""""""""""""""""""""""""""""""""""""
" F6 under_score to camelCase
nno <F6> :%s/_\(\l\)/\u\1/gc<cr>
" Shift F6 camelCase to under_score
nno <S-F6> :%s/\(\l\)\(\u\)/\1\_\l\2/gc<cr>

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
" Open .vimrc
map <leader>v :e! $MYVIMRC<cr>"

" Reopen .vimrc when saved
au! bufwritepost .vimrc so $MYVIMRC

""""""""""""""""""""""""""""""""""""""""
" Minpac (packages)
""""""""""""""""""""""""""""""""""""""""
com! PackUpdate pa minpac | so $MYVIMRC | cal minpac#update()
com! PackClean pa minpac | so $MYVIMRC | cal minpac#clean()

if exists('*minpac#init')
  cal minpac#init()

  cal minpac#add('aklt/plantuml-syntax')
  cal minpac#add('digitaltoad/vim-jade')
  cal minpac#add('godlygeek/tabular')
  cal minpac#add('k-takata/minpac', {'type': 'opt'})
  cal minpac#add('maralla/completor.vim')
  cal minpac#add('morhetz/gruvbox')
  cal minpac#add('posva/vim-vue')
  cal minpac#add('tpope/vim-abolish')
  cal minpac#add('tpope/vim-commentary')
  cal minpac#add('tpope/vim-rails')
  cal minpac#add('tpope/vim-surround')
  cal minpac#add('w0rp/ale')
en

""""""""""""""""""""""""""""""""""""""""
" Packages
""""""""""""""""""""""""""""""""""""""""
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

" Gruvbox
colo gruvbox

" Netrw
nno <TAB> :Lex<cr>
let g:netrw_altv=1
let g:netrw_banner=0 " Removing help
let g:netrw_browse_split=0
let g:netrw_bufsettings='noma nomod nu nobl nowrap ro rnu'
let g:netrw_liststyle=0
let g:netrw_list_hide='.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\.\.\=/\=$'
let g:netrw_winsize=25

""""""""""""""""""""""""""""""""""""""""
" Statusline
""""""""""""""""""""""""""""""""""""""""
se ls=2 stal=2 " Show statusbar and tabbar always
se nosmd       " Hide mode line

" Display errors from Ale in statusline
fu! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))
    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    if l:counts.total == 0
      hi User2 ctermbg=237 ctermfg=Green guibg=#373737 guifg=Green
      return '👍 OK'
    else
      hi User2 ctermbg=237 ctermfg=Red guibg=#373737 guifg=Red
      return printf('👎 %d warning(s) %d error(s)', all_non_errors, all_errors)
    en
endf

" Show mode icon
fu! ModeIcon()
  if mode() == 'i'
    return '📝 Insert'
  elseif mode() == 'v'
    return '🔎 Visual'
  else
    return '🔐 Normal'
  en
endf

" Statusline
se stl=
se stl+=%1*\ %{ModeIcon()}%m\ %*
se stl+=%2*\ %{LinterStatus()}\ %*
se stl+=%3*\ 📂\ %F\ %=%*
se stl+=%4*\ 📅\ %{strftime('%Y-%m-%d\ ⏰\ %R',\ getftime(expand('%')))}\ %*
se stl+=%5*\ TAB:\ 📂\ Netrw\ \ Ctrl+P:\ 🔎\ Find...\ \ F6/S-F6:\ _\ to\ 🐫\ %*
se stl+=%6*\ ⏬\ %l:%L\ ⏩\ %c\ %*

" Colors used in status and tab
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
hi User1 ctermbg=237 ctermfg=Yellow guibg=#373737 guifg=Yellow
hi User2 ctermbg=237 ctermfg=Green guibg=#373737 guifg=Green
hi User3 ctermbg=237 ctermfg=LightBlue guibg=#373737 guifg=LightBlue
hi User4 ctermbg=237 ctermfg=LightGray guibg=#373737 guifg=LightGray
hi User5 ctermbg=237 ctermfg=Yellow guibg=#373737 guifg=Yellow
hi User6 ctermbg=237 ctermfg=White guibg=#373737 guifg=White
hi User7 ctermbg=237 ctermfg=Red guibg=#373737 guifg=Red

" Generate tabs
fu! MyTabLine()
	let s = ''
	for i in range(tabpagenr('$'))
	  " Select the highlighting
	  if i + 1 == tabpagenr()
	    let s .= '%#TabLineSel#'
	  else
	    let s .= '%#TabLine#'
	  en

	  " Set the tab page number (for mouse clicks)
	  let s .= '%' . (i + 1) . 'T'

	  " The label is made by MyTabLabel()
	  if i + 1 == tabpagenr()
	    let s .= '  📂 %3*'
	  else
	    let s .= '  📁 %4*'
	  en

	  let s .= '%{MyTabLabel(' . (i + 1) . ')}%*'
	endfo

	" After the last tab fill with TabLineFill and reset tab page nr
	let s .= '%#TabLineFill#%T'

	" Right-align the label to close the current tab page
	if tabpagenr('$') > 1
	  let s .= '%=%#TabLine#%999X%7* ✖ %*'
	en

	retu s
endf

" Tab label
fu! MyTabLabel(n)
	let buflist = tabpagebuflist(a:n)
	let winnr = tabpagewinnr(a:n)
	retu bufname(buflist[winnr - 1])
endf

" Tabline
se tal=%!MyTabLine()
