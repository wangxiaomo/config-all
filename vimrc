" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
 au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showmode
set showcmd         " Show (partial) command in status line.
set ruler
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

if has("gui_runing")
  colorscheme pablo
endif

" xiaomo code here
set shiftwidth=4
set autoindent
set number
set tabstop=4
set expandtab
set fencs=utf-8,cp936
imap <s-tab> <c-p>
map <c-d> :tabclose<CR>

" For vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'bash-support.vim'
Bundle 'perl-support.vim'
" Python Import 插件.默认开启
Bundle 'python-imports.vim'
let g:PythonAutoAddImports = 1
" NERDComments 插件.快捷键 c-c
map <c-c> \c<SPACE>
imap <c-c> <ESC>\c<SPACE>i
" MatchIndent. 强制转化文件 indent 到指定 indent
Bundle 'matchindent.vim'
" Mark.vim
map m \m
" NerdTree
map <c-f> :NERDTreeToggle<CR>
imap <c-f> <ESC>:NERDTreeToggle<CR>
" gsession.vim
let g:autoload_session = 1
let g:autosave_session = 1

filetype plugin on

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
