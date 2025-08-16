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

" vim-easymotion
Plug 'easymotion/vim-easymotion'

" tagbar
Plug 'majutsushi/tagbar' 

" matchit
Plug 'chrisbra/matchit'

" tcomment_vim
Plug 'tomtom/tcomment_vim'
" Plug 'tpope/vim-repeat'
call plug#end()

"--------------------------------
" Settings
"--------------------------------

" 告訴 Vim 「不要模仿舊版 vi，請使用所有 Vim 增強功能。」
set nocompatible
" 關閉特殊字元顯示
set nolist
" 讓 Vim 在終端機的視窗標題列顯示當前編輯的檔案名稱
set title
" 會讓標題列顯示完整的檔案路徑，並加上 ` - Vim`（{path_to_tile} - Vim）
set titlestring=%F\ -\ Vim
" 啟用模式顯示
set showmode
" 讓 Vim 始終顯示狀態列，無論你有幾個分割視窗
set laststatus=2
" 讓垂直分割視窗總是在右側開啟
set splitright
" 讓水平分割視窗總是在下方開啟
set splitbelow
" 設定游標距離視窗邊緣 3 行時自動滾動
set scrolloff=3
" 關閉自動跳到行首非空白字元的功能
set nostartofline
" 顯示游標所在位置資訊
set ruler
" 設定文字超過螢幕寬度自動換行
set wrap
" 設定自動換行的顯示模式（單字不會被切斷）
set linebreak
set number
set relativenumber
" 啟用 cursorline 功能
set cursorline
" unnamed 主要是與 X11 的 PRIMARY 剪貼簿互動（滑鼠選取即複製）。 > 只在 Linux 環境下會有差異
set clipboard+=unnamed
" unnamedplus 主要是與 X11 的 CLIPBOARD 剪貼簿互動（Ctrl+C 和 Ctrl+V 所使用的剪貼簿）。> 只在 Linux 環境下會有差異
set clipboard+=unnamedplus
set incsearch
set ignorecase
" 在 command 模式使用 tab 自動補齊的時候會有預覽區域可以看
set wildmenu
" 在 command 模式使用 tab 自動補齊的模式設定
set wildmode=longest,full
" 將 <, > 加入配對字元清單(使用 % 可以互跳)
set matchpairs+=<:>
" 設定終端機顏色數量為 256 色，以確保顏色顯示正常
set t_Co=256
" 設定語法高亮的最大列數為 256 （當一行超過 256 個字元時，Vim 會停止對其進行語法高亮，以提高效能
set synmaxcol=256
" 啟用 lazyredraw （在執行巨集或複雜操作時，延後畫面重繪，直到操作完成後再更新）
set lazyredraw
" 當檔案在 Vim 外部被修改時，Vim 會自動偵測並重新載入
set autoread
" 啟用 hidden 模式（允許在不存檔的情況下切換到其他檔案）
" set hidden
" 啟用自動縮排
set autoindent
" 啟用複製縮排（當 `autoindent` 啟用時，這個選項會讓 Vim 複製上一行的縮排）
set copyindent
" 設定 Vim 內部使用的字元編碼為 UTF-8
set encoding=utf-8
" 將目前檔案、Vim 內部和終端機的編碼都設為 UTF-8
set fenc=utf-8 enc=utf-8 tenc=utf-8
" 設定 Vimscript 檔案本身的編碼
scriptencoding utf-8
syntax enable
filetype on
filetype indent on
filetype plugin on

" --- Gruvbox 配色方案設定 ---
" 載入配色方案
try
" 選擇深色模式
set background=dark
colorscheme gruvbox
" 調整對比度
let g:gruvbox_contrast_dark = 'hard'
catch
endtry

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

"
"--- easymotion/vim-easymotion ---
"
" 將套件預設的快捷鍵全部取消
let g:EasyMotion_do_mapping = 0 

" 使用 2 個字做搜尋、快速跳轉
noremap <leader>f <Plug>(easymotion-overwin-f2)
" 使用 n 個字做搜尋、快速跳轉
noremap <leader>F <Plug>(easymotion-sn)

"--- majutsushi/tagbar ---
"
" 開關 tagbar 側邊欄
noremap <leader>st :TagbarToggle<CR>


"--- tomtom/tcomment_vim ---
"
" 關閉所有預設快捷鍵
let g:tcomment_maps = ''

" 註解多行：選取後按 <Leader>c
noremap <leader>c :TComment<CR>
" 區塊註解多行：選取後按 <Leader>C
noremap <leader>C :TCommentBlock<CR>
