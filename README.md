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

#### 待研究
- [ ] Plug 'garbas/vim-snipmate'
- [ ] Plug 'honza/vim-snippets'
- [ ] Plug 'tpope/vim-commentary'
- [ ] Plug 'tpope/vim-repeat'
- [ ] Plug 'terryma/vim-multiple-cursors'
- [ ] Plug 'tomtom/tcomment_vim'

#### 還不太需要但可以存著有需要再裝
- [ ] Plug 'mattn/emmet-vim'

#### 延後研究
- [ ] Plug 'bkad/CamelCaseMotion'
- preservim/nerdcommenter
- [ ] Plug 'airblade/vim-gitgutter'
- [ ] Plug 'mileszs/ack.vim'

#### 有問題需要修正 or 替換
- [ ] Plug 'vim-airline/vim-airline-themes'
- [ ] itchyny/lightline.vim 在其他終端機會有錯誤出現，晚點處理(看起來是有對應的 color scheme 沒有安裝所以無法正常執行)

### Setting 

