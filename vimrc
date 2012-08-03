" 自动返回到上次打开位置
if has("autocmd")
 au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has('mouse')
  set mouse=a		" Enable mouse usage (all modes)
endif


" common config of vimrc
let mapleader=','

syntax on

set ruler
set showmode
set showcmd
set showmatch

set ignorecase
set smartcase
set incsearch
set hlsearch

set autowrite
set hidden

set background=dark

set number
set shiftwidth=4
set autoindent
set tabstop=4
set expandtab
set fencs=utf-8,cp936
set backspace=indent,eol,start

" HighLight Line Length
highlight rightMargin ctermfg=lightblue
match rightMargin /.\%>79v/

" key binding of vimrc
imap <s-tab> <c-p>
map  <c-d> :tabclose<CR>

" plugin config of vimrc
let g:PythonAutoAddImports = 1
map m \m

filetype plugin on
map  <leader>e :NERDTreeToggle<CR>
imap <leader>e :NERDTreeToggle<CR>
map  <C-e> :NERDTreeToggle<CR>
imap <C-e> <ESC>:NERDTreeToggle<CR>
map  <leader>t :TagbarToggle<CR>
imap <leader>t <ESC>:TagbarToggle<CR>

let g:Powerline_symbols = 'fancy'
set laststatus=2
set encoding=utf-8
set t_Co=256


" For vundle
set nocompatible
filetype on
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'python-imports.vim'
Bundle 'matchindent.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'Lokaltog/vim-powerline'
Bundle 'spf13/vim-colors'
Bundle 'Shougo/neocomplcache'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'

" Other
" F5 to run current script [ default is python ]
nmap <F5> :call Run_cnt_script()<CR>
function Run_cnt_script()
  let script_name = expand("%")
  let script_ext  = expand("%:e")
  if (script_name == '')
    echohl WarningMsg | echo "Fail to Run." | echohl None
    return
  endif
  if (script_ext == 'py')
    execute "!python " . script_name
    return
  endif
  if (script_ext == 'pl')
    execute "!perl " . script_name
    return
  endif
  echohl WarningMsg | echo "Unrecognized Ext!" | echohl None
endfunction

" InsertPythonLocale
map <F6> gga#-*- coding: utf-8 -*-<CR><ESC>
imap jj <ESC>
