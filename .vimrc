"pathogen plugin
filetype off
"execute pathogen#infect()
filetype plugin indent on

set nocompatible "This fixes the problem where arrow keys do not function properly on some systems.

set modelines=0 "Some security issues around these

syntax on  "Enables syntax highlighting for programming languages

set tabstop=2  "How much space Vim gives to a tab
set shiftwidth=2  "Assists code formatting
set softtabstop=2
set expandtab
set smarttab  "Improves tabbing
set autoindent  "If you're indented, new lines will also be indented
set smartindent  "Automatically indents lines after opening a bracket in programming languages

set t_Co=256
colorscheme wargrey "Changes the color scheme. Change this to your liking. Lookin /usr/share/vim/vim61/colors/ for options.

set encoding=utf-8
set scrolloff=2
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set ttyfast
set ruler
set backspace=indent,eol,start
set relativenumber

" remap leader key from \ to ,
let mapleader = ","

" Searching and navigation
nnoremap / /\v
nnoremap / /\v
vnoremap ? ?\v
vnoremap ? ?\v

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

nnoremap <tab> %
vnoremap <tab> %

"map ; to :
nnoremap ; :

"remove trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

nnoremap <leader>v V`]

"work with splits
nnoremap <leader>s <C-w>s<C-w>j
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize
nnoremap <leader>- :resize -5<cr>
nnoremap <leader>= :resize +5<cr>
nnoremap <leader>_ :vertical resize -5<cr>
nnoremap <leader>+ :vertical resize +5<cr>

" Clear search highlighting
nnoremap <leader>n :set invrelativenumber<cr>

" Run last recoreded macro
nnoremap Q @q

autocmd FileType python nnoremap <buffer> K :<C-u>execute "!xterm -e 'pydoc " . expand("<cword>") . "' &"<CR><CR>
autocmd FileType sh nnoremap <buffer> K :<C-u>execute "!xterm -e 'man " . expand("<cword>") . "' &"<CR><CR>
autocmd FileType c nnoremap <buffer> K :<C-u>execute "!xterm -e 'man 3 " . expand("<cword>") . "' &"<CR><CR>

"open nerdtree at startup
"autocmd vimenter * NERDTree
