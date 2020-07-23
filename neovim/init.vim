" -----------------------------------------------
" Colorscheme
" -----------------------------------------------

call plug#begin()
Plug 'rakr/vim-one'             " One colorscheme
call plug#end()

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on                       " Activate syntax
set background=dark             " Use One dark version
colorscheme one                 " Use One colorscheme

" -----------------------------------------------
" General
" -----------------------------------------------

let mapleader=","               " Lead with ,
set mouse=a                     " Let's activate the mouse

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

