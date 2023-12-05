# nvim config

## install lazy.nvim package manager + plugins

Ref: https://github.com/folke/lazy.nvim

- Start cmd and run `nvim c:\users\%username%\appdata\local\programs\neovim\share\nvim\runtime\plugin\nvim.lua`
- Or using powershell: `nvim c:\users\$env:USERNAME\appdata\local\programs\neovim\share\nvim\runtime\plugin\nvim.lua`
- Add the following:

```lua
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({ -- https://github.com/folke/lazy.nvim
"mbbill/undotree" -- https://github.com/mbbill/undotree
})
```

## Undotree

Ref: https://github.com/mbbill/undotree

To toggle the Undotree:

```bash
:UndotreeToggle
```

