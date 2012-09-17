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

" key binding of vimrc
imap jj <ESC>
imap <s-tab> <c-p>
imap <c-w>n    :tabnew<CR>
map  <c-w>n    :tabnew<CR>
map  <leader>1 :tabn 1<CR>
map  <leader>2 :tabn 2<CR>
map  <leader>3 :tabn 3<CR>
map  <leader>4 :tabn 4<CR>
map  <leader>nm :NumbersToggle<CR>

" plugin config of vimrc
let g:PythonAutoAddImports = 1
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
let NERDChristmasTree=0
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc', '\.swp$']
let NERDTreeSortOrder=['^__\.py', '\/$', '*', '\.swp$', '\~$']
let NERDTreeShowBookmarks=1
let g:user_zen_expandabbr_key='<C-j>'
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=2
let g:neocomplcache_lock_buffer_name_pattern='\*ku\*'
let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_enable_balloons = 1
let g:ctrlp_use_caching = 1
let g:ctrlp_working_path_mode = 0
let g:syntastic_enable_highlighting = 0
let g:jinja_syntax_html = 1

filetype plugin on
imap ` <ESC>
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
Bundle 'kien/ctrlp.vim'
Bundle 'mako.vim'
Bundle 'mako.vim--Torborg'
Bundle 'python-imports.vim'
Bundle 'vim-coffee-script'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'Shougo/neocomplcache'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'
Bundle 'myusuf3/numbers.vim'
Bundle 'mattn/webapi-vim'
Bundle 'Glench/Vim-Jinja2-Syntax'
Bundle 'ervandew/supertab'
Bundle 'mattn/zencoding-vim'

filetype on " Make Bundle Happy

autocmd FileType python,perl set sw=4
autocmd FileType python,perl set ts=4
autocmd FileType javascript,html,markdown set sw=2
autocmd FileType javascript,html,markdown set ts=2

set background=dark
colorscheme molokai
