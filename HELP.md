# 自定義 Vim / IdeaVim 快捷鍵說明

這份文件總結了您在 `.vimrc` 和 `.ideavimrc` 中設定的自定義快捷鍵。

**按鍵說明:**
- **空白鍵 > [按鍵]**: 表示先按一下 `空白鍵` (Leader 鍵)，再按另一個鍵。
- **opt + [按鍵]**: 表示同時按下 `Option` 鍵 (在 Windows/Linux 上通常是 `Alt`) 和另一個鍵。

---

## 一般編輯 & 函式操作 (`.vimrc`)

這些是您在 `.vimrc` 中設定的通用快捷鍵。

| 快捷鍵 | 功能說明 |
| :--- | :--- |
| `空白鍵 > o` | 在當前行下方新增一個空白行，游標位置不變。 |
| `空白鍵 > O` | 在當前行上方新增一個空白行，游標位置不變。 |
| `空白鍵 > yf` | 複製目前游標所在的整個函式。 |
| `空白鍵 > df` | 複製目前游標所在的整個函式，並貼在函式下方。 |
| `空白鍵 > ddf` | 刪除目前游標所在的整個函式。 |
| `空白鍵 > vf` | 選取目前游標所在的整個函式。 |
| `空白鍵 > gf` | 跳到目前函式的起始位置。 |
| `空白鍵 > nf` | 跳到下一個函式的起始位置。 |
| `空白鍵 > Nf` | 跳到上一個函式的起始位置。 |
| `空白鍵 > nv` | 跳到下一個變數 (搜尋 ` 符號)。 |
| `空白鍵 > Nv` | 跳到上一個變數 (搜尋 ` 符號)。 |

---

## 插件相關快捷鍵 (`.vimrc`)

這些快捷鍵與您安裝的 Vim 插件相關。

| 快捷鍵 | 對應插件 | 功能說明 |
| :--- | :--- | :--- |
| `空白鍵 > 1` | NERDTree | 切換 NERDTree 檔案總管的開關。 |
| `空白鍵 > E` | FZF | (Files) 搜尋專案中的所有檔案。 |
| `空白鍵 > e` | FZF | (History) 搜尋最近開啟的檔案歷史紀錄。 |
| `空白鍵 > w` | FZF | (Windows) 搜尋目前開啟的視窗/分頁。 |

---

## IDE 整合快捷鍵 (`.ideavimrc`)

這些快捷鍵主要用於 JetBrains IDE (如 PhpStorm) 中，透過 IdeaVim 插件與 IDE 功能進行互動。

| 快捷鍵 | 功能說明 |
| :--- | :--- |
| `zso` | 重新載入 `.ideavimrc` 設定檔。 |
| `空白鍵 > D` | (IDE) 偵錯類別 (Debug Class)。 |
| `空白鍵 > d` | (IDE) 偵錯 (Debug)。 |
| `空白鍵 > R` | (IDE) 執行類別 (Run Class)。 |
| `空白鍵 > r` | (IDE) 重新執行 (Rerun)。 |
| `空白鍵 > l` | (IDE) 重新格式化程式碼 (Reformat Code)。 |
| `空白鍵 > t` | (IDE) 開啟重構選單 (Refactor This)。 |
| `空白鍵 > b` | (IDE) 跳至定義 (Go to Declaration)。 |
| `空白鍵 > gi` | (IDE) 跳至實作 (Go to Implementation)。 |
| `空白鍵 > gs` | (IDE) 跳至父類別方法 (Go to Super Method)。 |
| `空白鍵 > ne` | (IDE) 跳至下一個錯誤。 |
| `空白鍵 > Ne` | (IDE) 跳至上一個錯誤。 |
| `空白鍵 > p` | (IDE) 貼上 (Editor Paste)。 |
| `空白鍵 > yy` | (IDE) 複製 (Editor Copy)。 |
| `空白鍵 > f` | (IDE) AceJump 快速跳轉。 |
| `opt + k` | (IDE) 向上擴展選取範圍 (Select Word)。 |
| `opt + j` | (IDE) 縮小選取範圍 (Unselect Word)。 |
| `opt + h` | (IDE) 回到上一個游標位置 (Back)。 |
| `opt + l` | (IDE) 前進到下一個游標位置 (Forward)。 |
