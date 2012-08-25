" 自动返回到上次打开位置
if has("autocmd")
 au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
if has('mouse')
  set mouse=a
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

set number
set shiftwidth=4
set autoindent
set tabstop=4
set expandtab
set fencs=utf-8,cp936
set backspace=indent,eol,start

set background=dark
set cursorcolumn
set cursorline
hi CursorColumn cterm=NONE ctermbg=black
hi CursorLine cterm=NONE ctermbg=black

" key binding of vimrc
imap jj <ESC>
imap <s-tab> <c-p>
map  <leader>d :tabclose<CR>
map  <leader>nm :NumbersToggle<CR>
map  <leader>ps :'<,'>Gist -P<CR>
map  <leader>pa :Gist -P<CR>
map  <leader>pp :Gist -p<CR>
map  <F5> :call Run_cnt_script()<CR>
map  <F6> gga#-*- coding: utf-8 -*-<CR><ESC>
map  <F7> <ESC>:set ft=html<CR>

" plugin config of vimrc
let g:PythonAutoAddImports = 1
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
let g:gist_detect_filetype = 1
" after u should set git user by git config --global github.user xiaomo

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

let g:indent_guides_auto_colors = 1
hi IndentGuidesEven ctermbg=darkgrey
hi IndentGuidesOdd  ctermbg=black 
let g:indent_guides_guide_size=1

if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

" For vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Gist.vim'
Bundle 'python-imports.vim'
Bundle 'vim-coffee-script'
Bundle 'tips.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Shougo/neocomplcache'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'
Bundle 'myusuf3/numbers.vim'
Bundle 'mattn/webapi-vim'

" Other
" F5 to run current script [ default is python ]
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

filetype on " Make Bundle Happy
