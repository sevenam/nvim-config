# nvim config

## install lazy.nvim package manager + plugins

Ref: https://github.com/folke/lazy.nvim

Start powershell and run:
```bash
ni c:\users\$env:USERNAME\appdata\local\nvim\init.lua
nvim c:\users\$env:USERNAME\appdata\local\nvim\init.lua
```
Add the following content to the file:

```lua
-- add lazy.nvim
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
  "mbbill/undotree", -- https://github.com/mbbill/undotree
  "tpope/vim-fugitive", -- https://github.com/tpope/vim-fugitive
  "navarasu/onedark.nvim", -- https://github.com/navarasu/onedark.nvim
  "github/copilot.vim", -- https://github.com/github/copilot.vim
  
  -- lsp:
  "VonHeikemen/lsp-zero.nvim", -- https://github.com/VonHeikemen/lsp-zero.nvim
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",

  -- autocompletion:
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "saadparwaiz1/cmp_luasnip",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lua",
  "rafamadriz/friendly-snippets",

  --telescope:
  "nvim-telescope/telescope.nvim", -- https://github.com/nvim-telescope/telescope.nvim
  "nvim-lua/plenary.nvim", -- dependency for telescope
  "nvim-treesitter/nvim-treesitter", --dependency for telescope
  "burntsushi/ripgrep", --dependency for telescope
  "sharkdp/fd", --dependency for telescope
})

-- add onedark.nvim theme
require('onedark').setup {
  style = 'warmer'
}
require('onedark').load()

```

## Undotree

Ref: https://github.com/mbbill/undotree

To toggle the Undotree:

```bash
:UndotreeToggle
```

## Fugitive

Ref: https://github.com/tpope/vim-fugitive

To toggle Fugitive:

```bash
:Git
:Git status
# etc
```

