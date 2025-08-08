"--------------------------------
" Plugins
"--------------------------------
call plug#begin('~/.vim/plugged')

" surround
Plug 'tpope/vim-surround'

" 下方狀態列的美觀套件
Plug 'itchyny/lightline.vim'

" nerd tree
Plug 'preservim/nerdtree'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

"--------------------------------
" Settings
"--------------------------------

" 告訴 Vim 「不要模仿舊版 vi，請使用所有 Vim 增強功能。」
set nocompatible
" 啟用模式顯示
set showmode
" 設定游標距離視窗邊緣 3 行時自動滾動
set scrolloff=3
set number
set relativenumber
" unnamed 主要是與 X11 的 PRIMARY 剪貼簿互動（滑鼠選取即複製）。 > 只在 Linux 環境下會有差異
set clipboard+=unnamed
" unnamedplus 主要是與 X11 的 CLIPBOARD 剪貼簿互動（Ctrl+C 和 Ctrl+V 所使用的剪貼簿）。> 只在 Linux 環境下會有差異
set clipboard+=unnamedplus
set incsearch
set ignorecase
" 在 command 模式使用 tab 自動補齊的時候會有預覽區域可以看
set wildmenu
" 將 <, > 加入配對字元清單(使用 % 可以互跳)
set matchpairs+=<:>
syntax enable
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

"--------------------------------
" Plugins About Setting
"--------------------------------

"--- itchyny/lightline.vim ---
"
" 永遠顯示狀態列，無論你有一個還是多個分割視窗
set laststatus=2
let g:lightline = { 'colorscheme': 'one(background=dark)' }

"--- preservim/nerdtree ---
"
" 開關 nerd tree
noremap <leader>1 :NERDTreeToggle<CR>

"--- junegunn/fzf ---
"
" 搜尋檔案
noremap <leader>E :Files<CR>
" 搜尋開啟檔案的歷史紀錄
noremap <leader>e :History<CR>
" 搜尋 tab
noremap <leader>w :Windows<CR>
