syntax enable

set background=dark
colorscheme solarized

" General setting {{{
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'isnowfy/python-vim-instant-markdown'
Plugin 'suan/vim-instant-markdown'
"Plugin 'wsdjeg/vim-chat'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


if has('gui_running')
    Bundle 'Valloric/YouCompleteMe'
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" filetype plugin indent on       " load file type plugins and indentation
let mapleader = ";"

set fileencodings=utf-8,gbk,big5,cp936,ucs-bom
set history=1000                " keep 1000 lines of command line history
set hidden                      " allow hidden buffers
set mouse=a                     " enable mouse
set noequalalways               " disable making windows the same size after splitting or closing
set completeopt=menu,longest,preview

" Style
set showcmd                     " display incomplete commands
set ruler                       " show the cursor position all the time
set nowrap                      " don't wrap lines
set number                      " show line numbers
set showmatch                   " show matching brackets
set autochdir                   " auto change the current working directory whenever opening a file
set laststatus=2                " always shows status line
" set spell                       " enable spell checking
set cursorline                  " highlight the screen line of the cursor
" set textwidth=78                " limit lines to 78 characters
" set colorcolumn=78

" Searching
set incsearch                   " do incremental searching
set hlsearch                    " highlight matches
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Whitespace
set tabstop=4
set autoindent                  
set smartindent
set softtabstop=4
set shiftwidth=4                " auto-indent amount
set shiftround                  " round indent to multiple of 'shiftwidth'
set expandtab                   " expand tab to spaces according to shiftwidth
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set ts=4
"set list                        " show invisible characters
set listchars=tab:▸\ ,eol:¬,trail:⌴,extends:❯,precedes:❮ " tweak some invisible characters

" Folding
set foldmethod=syntax
set foldlevel=100
nnoremap <silent> <SPACE> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" Undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000

set wrap

" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'

