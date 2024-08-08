# Neovim config

## Install lazy.nvim package manager + plugins

Ref: https://github.com/folke/lazy.nvim

Start powershell and run:
```bash
ni c:\users\$env:USERNAME\appdata\local\nvim\init.lua
nvim c:\users\$env:USERNAME\appdata\local\nvim\init.lua
```
Then: add the content from init.lua in this repo.

To start Lazy:

```bash
:Lazy
```

To use the menu options for update/sync/clean/etc use Shift + letter. E.g. Shift-U to update.

## Telescope

Ref: https://github.com/nvim-telescope/telescope.nvim

To open and search for files (tab is available for auto-complete):

```bash
:Telescope fd
:Telescope find_files
```

## Undotree

Ref: https://github.com/mbbill/undotree

To toggle the Undotree:

```bash
:UndotreeToggle
```

## Nerdtree

Ref: https://github.com/preservim/nerdtree

Toggle nerdtree:

```bash
:NERDTree .
```
Switching between nerdtree and code editor: CTRL-w + w

## NvimTree

Ref: https://github.com/nvim-tree/nvim-tree.lua

Toggle nvimtree:

```bash
:NvimTreeToggle
```

Switching between nvimtree and code editor: CTRL-w + w

## BufferExplorer

Ref: https://github.com/jlanzarotta/bufexplorer

To open buffer explorer to switch between open files type:

```bash
\be
:BufExplorer
```

To delete a buffer/close a file: type `d` in the buffer explorer


## Fugitive

Ref: https://github.com/tpope/vim-fugitive

To toggle Fugitive:

```bash
:Git
:Git status
# etc
```

## Markdown-Preview

Ref: https://github.com/iamcco/markdown-preview.nvim

To toggle Markdown-Preview:
```
:MarkdownPreview
```

## Dropbar

Ref: https://github.com/Bekaboo/dropbar.nvim
