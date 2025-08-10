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
set wildmode=longest,list             " use emacs-style tab completion when selecting files, etc

set backspace=indent,eol,start

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e


```
- [ ] itchyny/lightline.vim 在其他終端機會有錯誤出現，晚點處理
