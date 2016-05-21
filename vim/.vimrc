set nocompatible              
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'benekastah/neomake'
Plugin 'sickill/vim-monokai'
Plugin 'vim-airline/vim-airline'
Plugin 'jnurmine/Zenburn'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab

set nrformats-=octal

set number
set ttimeout
set ttimeoutlen=100

set incsearch
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set laststatus=2
set ruler
set wildmenu
set lazyredraw

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

set encoding=utf-8

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

set formatoptions+=j " Delete comment character when joining commented lines

if has('path_extra')
  setglobal tags-=./tags tags-=./tags; tags^=./tags;
endif

set autoread

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

inoremap <C-U> <C-G>u<C-U>

let g:airline_powerline_fonts = 1
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
"colorscheme  solarized
colors zenburn
let g:airline_theme='powerlineish'

let python_highlight_all = 1

let mapleader="\\"
