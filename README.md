# vim-setting

## 環境

安裝 [junegunn/vim-plug](https://github.com/junegunn/vim-plug)

## 使用方法

### In Server
```
ln -s $PWD/vimrc $HOME/.vimrc
```

### In Local
```
ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/ideavimrc $HOME/.ideavimrc
```

#### color scheme
如果 ```~/.vim/``` 中沒有 colors 則建立 colors 資料夾
```
mkdir -p ~/.vim/colors
```

下載 gruvbox.vim 到 ```~/.vim/colors``` 資料夾
```
curl -o ~/.vim/colors/gruvbox.vim https://raw.githubusercontent.com/morhetz/gruvbox/master/colors/gruvbox.vim
```
## 安裝套件

使用 vim 開啟任意檔案後輸入指令

```
:PlugInstall
```

## postfixTemplate

[**postfixTemplate 為 jetbrains 套件**](https://github.com/xylo/intellij-postfix-templates)

可以設定自己寫的後綴輔助 auto complete
在設定介面設定來源來自 web 
並貼上像是下方的 github 網址

```
https://raw.githubusercontent.com/dopamine908/vim-setting/main/php.postfixTemplates
```

## Todo 待研究

### Plugin
- [ ] Plug 'easymotion/vim-easymotion'
- [ ] Plug 'bkad/CamelCaseMotion'
- [ ] Plug 'tpope/vim-commentary'
- [ ] Plug 'terryma/vim-multiple-cursors'
- [ ] Plug 'chrisbra/matchit'
- [ ] Plug 'vim-airline/vim-airline-themes'
- [ ] Plug 'scrooloose/nerdtree'
- [ ] Plug 'ctrlpvim/ctrlp.vim'
- [ ] Plug 'mattn/emmet-vim'
- [ ] Plug 'tpope/vim-repeat'
- [ ] Plug 'terryma/vim-multiple-cursors'
- [ ] Plug 'chrisbra/matchit'
- [ ] Plug 'tomtom/tcomment_vim'
- [ ] Plug 'MarcWeber/vim-addon-mw-utils'
- [ ] Plug 'tomtom/tlib_vim'
- [ ] Plug 'garbas/vim-snipmate'
- [ ] Plug 'honza/vim-snippets'
- [ ] Plug 'majutsushi/tagbar'
- [ ] Plug 'mileszs/ack.vim'
- [ ] Plug 'airblade/vim-gitgutter'

### Setting 
```
set switchbuf=useopen
set showtabline=2                     " always show tab
set wildmode=longest,list             " use emacs-style tab completion when selecting files, etc
set wildmenu                          " make tab completion for files/buffers act like bash
set key=			                        " disable encryption
set synmaxcol=128
set viminfo=			                    " disable .viminfo file
set ttyfast                           " send more chars while redrawing
set lazyredraw
set nobackup                          " no *~ backup files
set noswapfile
set nowritebackup
set copyindent                        " copy the previous indentation on autoindenting
set ignorecase                        " ignore case when searching
set smartcase
set smarttab                          " insert tabs on the start of a line according to
set expandtab                         " replace <TAB> with spaces
set softtabstop=2
set shiftwidth=2
set tabstop=2
set shortmess=Ia                      " remove splash wording

" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

" file encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

" cursorline switched while focus is switched to another split window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" shell setting for RVM
set shell=/bin/sh

set backspace=indent,eol,start

set noswapfile
set hidden
set nobomb            " no BOM(Byte Order Mark)
set mouse=a

" file encoding
set encoding=utf-8
scriptencoding utf-8
```
- [ ] itchyny/lightline.vim 在其他終端機會有錯誤出現，晚點處理
