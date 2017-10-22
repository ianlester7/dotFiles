set nocompatible              " be iMproved, required
filetype off                  " required

" remap leader key from \ to ,
let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

Plugin 'vim-scripts/indentpython.vim'

" Bundle 'Valloric/YouCompleteMe'
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

Plugin 'w0rp/ale'
Plugin 'nvie/vim-flake8'
syntax on

Plugin 'flazz/vim-colorschemes'

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme wargrey
endif

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
nnoremap <leader>f :NERDTreeToggle<CR>

"Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
nmap <Leader>f :FZF<CR>
set rtp+=~/.fzf

Plugin 'tpope/vim-fugitive'

Plugin 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'

Plugin 'tpope/vim-unimpaired'

Plugin 'airblade/vim-gitgutter'
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

Plugin 'itchyny/lightline.vim'

call vundle#end()

filetype plugin on

set modelines=0 "Some security issues around these

set tabstop=2  "How much space Vim gives to a tab
set shiftwidth=2  "Assists code formatting
set softtabstop=2
set expandtab
set smarttab  "Improves tabbing
set autoindent  "If you're indented, new lines will also be indented
set smartindent  "Automatically indents lines after opening a bracket in programming languages

set t_Co=256
" colorscheme wargrey "Changes the color scheme. Change this to your liking. Lookin /usr/share/vim/vim61/colors/ for options.

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

set noswapfile

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

set foldmethod=indent
set foldlevel=99

nnoremap <space> za

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
