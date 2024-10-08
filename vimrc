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
set ignorecase
syntax on
filetype on
filetype indent on
filetype plugin on


"--------------------------------
" Key Mapping
"--------------------------------

" let mapleader = "<Space>"
let mapleader = " "

"" 向下新增一個空白行
noremap <leader>o moo<ESC>`o:delmarks o<Enter>
"" 向上新增一個空白行
noremap <leader>O moO<ESC>`o:delmarks o<Enter>
"" 複製整個 function
noremap <leader>yf [MjV]My
"" 複製整個 function 並貼上
noremap <leader>df [MjV]My]Mp]m
"" 刪除整個 function
noremap <leader>ddf [MjV]Md
"" 全選整個 function
noremap <leader>vf [MjV]M
"" 跳到現在游標所屬的 function 的位置
noremap <leader>gf [mt(
"" 跳到下一個 function 的位置
noremap <leader>nf ]mt(
"" 跳到上一個 function 的位置
noremap <leader>Nf ]M[m[mt(
"" 跳到下一個 變數 的位置
noremap <leader>nv /\$<Enter>
"" 跳到上一個 變數 的位置
noremap <leader>Nv ?\$<Enter>


