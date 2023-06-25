" -----------------------------------------------
" Colorscheme
" -----------------------------------------------

call plug#begin()
Plug 'tomasiser/vim-code-dark'  " https://github.com/tomasiser/vim-code-dark
call plug#end()

syntax on                       " Activate syntax
colorscheme codedark            " Use codedark colorscheme
set termguicolors               " True color 24bit

" -----------------------------------------------
" General
" -----------------------------------------------

let mapleader=","               " Lead with ,
set mouse=                      " Unset mouse

" Format settings
set nowrap                      " No wrap lines
set tabstop=4                   " A tab is four spaces
set softtabstop=4               " Also softtab
set expandtab                   " Expands tab
set backspace=indent,eol,start  " Allow backspacing over everything
set scrolloff=4                 " Keep 4 lines off the edges of the screen
set autoindent                  " Always set autoindenting on
set smartindent                 " Smart indent
set copyindent                  " Copy the previous indentation
set number                      " Always show line number
set shiftwidth=4                " Four spaces on indenting
set shiftround                  " Use multiple of swidth when indenting with <>
set showmatch                   " Set show matching parenthesis
set ignorecase                  " Ignore case when searching
set smartcase                   " Ignore case if pattern is all lowercase
set hlsearch                    " Highlight search terms
set incsearch                   " Show search matches as you type
set title                       " Change the terminal's title
set visualbell                  " Don't beep
set noerrorbells                " I said don't beep
set showmode                    " Show actual status
set showcmd                     " Show commands
set ruler                       " Show position info
set laststatus=2                " Show the status line always
set ch=2                        " Command line height
set backspace=2                 " Backspacing over everything in insert mode
set whichwrap+=<,>,h,l,[,]      " Backspace and cursor keys wrap to
set shortmess=filtIoOA          " Shorten messages
set report=0                    " Tell us about changes
set nostartofline               " Don't jump to the start of line when scrolling

" Clipboard
set clipboard=unnamed           " Use system clipboard

" File settings
set modelines=0                 " Disable modelines, they are not used anymore

" History settings
set history=1000                " Remember more commands and search history
set undolevels=1000             " Use many muchos levels of undo

" Crap settings
set formatoptions+=cqron1       " Set auto-crap of lines
set textwidth=120               " Set 120 chars to the width
set fileformats=unix,mac,dos    " Autodetect end of line format

" Menu formatting
set wildmode=list:longest,full
set wildchar=<TAB>
set wildignore=*.swp,*.bak,*.pyc,*.pyo,*.class,*.o

