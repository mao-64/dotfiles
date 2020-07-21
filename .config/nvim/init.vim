let mapleader =" "

call plug#begin('~/.local/sharh/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'terryma/vim-multiple-cursors'

call plug#end()

set number
set relativenumber
set incsearch

syntax on

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <leader>n :NERDTreeToggle<CR>
