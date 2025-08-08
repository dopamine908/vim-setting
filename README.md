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

## Todo
- [ ] Plug 'easymotion/vim-easymotion'
- [ ] Plug 'bkad/CamelCaseMotion'
- [ ] Plug 'tpope/vim-surround'
- [ ] Plug 'tpope/vim-commentary'
- [ ] Plug 'terryma/vim-multiple-cursors'
- [ ] Plug 'chrisbra/matchit'
- [ ] set backspace=indent,eol,start
