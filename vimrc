
let mapleader=','
syntax on

set mouse=a
set ruler
set number
set showmode
set showcmd
set showmatch

set hlsearch
set ignorecase
set smartcase
set incsearch

set autowrite
set hidden

set ai
set sw=4
set ts=4
set expandtab
set fencs=utf-8,cp936
set backspace=indent,eol,start

if has("autocmd")
  au BufReadPost * if line("'\"")>1 && line("'\"")<=line("$") | exe "normal! g'\"" | endif
endif

imap jj       <ESC>
imap <s-tab>  <c-p>
imap <c-w>n   :tabnew<CR>
map  <c-w>n   :tabnew<CR>
map  <leader>1 :tabn 1<CR>
map  <leader>2 :tabn 2<CR>
map  <leader>3 :tabn 3<CR>
map  <leader>4 :tabn 4<CR>
map  <leader>e :NERDTreeToggle<CR>
imap <leader>e <ESC>:NERDTreeToggle<CR>
map  <leader>t :TagbarToggle<CR>
imap <leader>t <ESC>:TagbarToggle<CR>

au BufNewFile,BufReadPost *.coffee setl sw=2 expandtab
let NERDTreeIgnore=['\.vim$','\~$','\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py','\/$','*','\.swp$','\~$']
let NERDTreeShowBookmarks=1
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=2
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_highlighting=0
let g:syntastic_echo_enable_signs=1
let g:syntastic_error_symbol='x'
let g:syntastic_warning_symbol='w'
let g:syntastic_enable_balloons=1
let g:ctrlp_use_caching=1
let g:ctrlp_working_path_mode=0

filetype plugin on

autocmd FileType python,perl set sw=4 ts=4 expandtab
autocmd FileType javascript,html,markdown set sw=2 ts=2 expandtab

" For Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'mako.vim'
Bundle 'mako.vim--Torborg'
Bundle 'python-imports.vim'
Bundle 'vim-coffee-script'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache'
Bundle 'majutsushi/tagbar'
Bundle 'groenewege/vim-less'
Bundle 'myusuf3/numbers.vim'

filetype on
" End

colorscheme molokai

" Some Plugins on vim.org
" markdown script_id = 2882
