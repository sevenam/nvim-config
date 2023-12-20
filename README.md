# nvim config

## install lazy.nvim package manager + plugins

Ref: https://github.com/folke/lazy.nvim

Start powershell and run:
```bash
ni c:\users\$env:USERNAME\appdata\local\nvim\init.lua
nvim c:\users\$env:USERNAME\appdata\local\nvim\init.lua
```
Then: add the content from init.lua in this repo.

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
Switching between nerdtree and code editor: CTRL-w w

## BufferExplorer

To open buffer explorer to switch between open files type:

```bash
\be
```

## Fugitive

Ref: https://github.com/tpope/vim-fugitive

To toggle Fugitive:

```bash
:Git
:Git status
# etc
```

