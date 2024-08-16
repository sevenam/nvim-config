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
  "ryanoasis/vim-devicons", -- https://github.com/ryanoasis/vim-devicons
  "preservim/nerdtree", -- https://github.com/preservim/nerdtree
  "jlanzarotta/bufexplorer", -- https://github.com/jlanzarotta/bufexplorer
  {
    "iamcco/markdown-preview.nvim", -- https://github.com/iamcco/markdown-preview.nvim
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- lsp and autocompletion:
  "VonHeikemen/lsp-zero.nvim", -- https://github.com/VonHeikemen/lsp-zero.nvim
  "neovim/nvim-lspconfig", -- https://github.com/neovim/nvim-lspconfig
  "williamboman/mason.nvim", -- https://github.com/williamboman/mason.nvim
  "williamboman/mason-lspconfig.nvim", -- https://github.com/williamboman/mason-lspconfig.nvim
  "mfussenegger/nvim-lint",
  "OmniSharp/omnisharp-vim",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "saadparwaiz1/cmp_luasnip",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lua",
  "rafamadriz/friendly-snippets",

  -- toggleterm:
  {
    'akinsho/toggleterm.nvim', -- https://github.com/akinsho/toggleterm.nvim
    version = "*",  
    config = function()
      require('toggleterm').setup{
        shell = 'pwsh.exe'
    }
    end
  },

  -- dropbar:
  {
    "Bekaboo/dropbar.nvim", -- https://github.com/Bekaboo/dropbar.nvim
    dependencies = { 'nvim-telescope/telescope-fzf-native.nvim'}
  },

  -- telescope:
  "nvim-telescope/telescope.nvim", -- https://github.com/nvim-telescope/telescope.nvim
  "nvim-lua/plenary.nvim", -- dependency for telescope
  "burntsushi/ripgrep", --dependency for telescope
  "sharkdp/fd", --dependency for telescope
  "nvim-tree/nvim-web-devicons", --dependency for telescope

  -- treesitter: 
  {
    "nvim-treesitter/nvim-treesitter", --dependency for telescope + code parsin
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = { "lua", "markdown", "c_sharp", "go", "git_config", "html", "json", "scss", "css", "javascript", "typescript", "python", "sql", "yaml", "xml" },
        auto_install = true,
        highlight = {
          enable = true,
        },
      })
      end,
  },

  -- nvim-tree
  -- also requires nerd fontes for icons to work: https://www.nerdfonts.com/font-downloads
  -- get the font: CaskaydiaMono (CascadiaMono)
  {
    "nvim-tree/nvim-tree.lua", -- https://github.com/nvim-tree/nvim-tree.lua
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 40,
      },
    })
    end,
  }
})

-- add onedark.nvim theme
require('onedark').setup {
  style = 'warmer'
}
require('onedark').load()


vim.opt.number = true
vim.opt.showmode = true -- Display the mode you're in
vim.opt.hidden = true -- Handle multiple buffers better
vim.opt.ruler = true
vim.opt.ignorecase = true -- Case-insensitive searching.
vim.opt.incsearch = true -- Highlight matches as you type
vim.opt.hlsearch = true -- Highlight matches
vim.opt.visualbell = true -- No beeping
vim.opt.tabstop = 2 -- Global tab width
vim.opt.shiftwidth = 2 -- Global shift width
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.laststatus = 2 -- Always display the status line
vim.opt.mouse = 'a' -- Enable mouse support
vim.opt.undofile = true -- Save undo history
-- options.wildmenu = true -- Enhanced command line completion
-- options.backspace = indent,eol,start -- Intuitive backspacing
-- options.showcmd = true -- Display incomplete commands

-- open nvimtree on startup/vimenter
-- disabled for now as it was slow
--vim.api.nvim_create_autocmd("VimEnter", {
--  callback = function()
--    require("nvim-tree.api").tree.open()
--  end
--})

-- set the default dir if opening without files
local username = vim.fn.expand('$USERNAME')
vim.api.nvim_exec([[
  autocmd VimEnter * if !argc() | cd C:/Users/]]..username..[[/jottacloud/notes | endif
]], false)

-- set the shell to powershell on windows
if vim.fn.has('win32') == 1 then
  -- Set shell to PowerShell
  vim.opt.shell = 'pwsh'  -- Use 'powershell' if you are using Windows PowerShell instead of PowerShell Core
  vim.opt.shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command ". $PROFILE; "'
  vim.opt.shellquote = ''
  vim.opt.shellxquote = ''
end

-- set keybindings
vim.keymap.set("i", "<C-BS>", "<C-w>", {silent = true, desc = 'delete whole word in insert mode'})
