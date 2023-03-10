"--------------------------------
" Plugins
"--------------------------------
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'

call plug#end()

"--------------------------------
" Settings
"--------------------------------

set nu
set relativenumber
set clipboard=unnamed
set incsearch
syntax on
filetype on
filetype indent on
filetype plugin on


"--------------------------------
" Key Mapping
"--------------------------------

" let mapleader = "<Space>"
let mapleader = " "

noremap <leader>o moo<ESC>`o:delmarks o<Enter>
noremap <leader>O moO<ESC>`o:delmarks o<Enter>
