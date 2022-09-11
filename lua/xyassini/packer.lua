vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  ----------------------------------------
  -- User Interface
  ----------------------------------------
  use("folke/tokyonight.nvim") -- Theme
  use("sunjon/shade.nvim") -- Shade inactive windows
  use("nvim-lua/plenary.nvim") -- Required by telescope
  use("nvim-telescope/telescope.nvim") -- Fuzzy finder

  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-web-devicons" },
  } -- Statusline

  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons",
    },
  } -- File explorer


  ----------------------------------------
  -- Language Server Protocol
  ----------------------------------------
  use("williamboman/mason.nvim") -- LSP Installer
  use("williamboman/mason-lspconfig.nvim") -- lspconfig wrapper for mason
  use("neovim/nvim-lspconfig") -- LSP configuration
  use("folke/trouble.nvim") -- diagnostics


  ----------------------------------------
  -- Autocomplete
  ----------------------------------------
  use("aca/emmet-ls") -- Emmet support
  use("github/copilot.vim") -- Copilot support (AI code completion)
  use("hrsh7th/nvim-cmp") -- Autocomplete
  use("hrsh7th/cmp-nvim-lsp") -- LSP completion
  use("hrsh7th/cmp-buffer") -- Buffer completion
  use("hrsh7th/cmp-path") -- Path completion
  use("hrsh7th/cmp-copilot") -- Copilot completion
  use("hrsh7th/cmp-nvim-lsp-document-symbol") -- LSP document symbol completion
  use({"L3MON4D3/LuaSnip", tag = "v1.*"}) -- Snippets
  use("rafamadriz/friendly-snippets") -- Snippets


  ----------------------------------------
  -- Syntax
  ----------------------------------------
  use("jiangmiao/auto-pairs") -- Auto-match brackets and quotes
  use("windwp/nvim-ts-autotag") -- Auto-close HTML tags
  use("tpope/vim-surround") -- Quickly change surrounding brackets, quotes, tags, whatever
  use("nvim-treesitter/nvim-treesitter-context") -- Sticks the current method I'm in to the top

  use({
    "nvim-treesitter/nvim-treesitter",
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }) -- Syntax highlighting


  ----------------------------------------
  -- Git
  ----------------------------------------
  use("kdheepak/lazygit.nvim")


  ----------------------------------------
  -- Testing
  ----------------------------------------
  use("vim-test/vim-test") -- Quick test running


  ----------------------------------------
  -- Misc
  ----------------------------------------
  use("Pocco81/auto-save.nvim") -- Autosaves files on insert mode leave because I forget that too often
  use("ethanholz/nvim-lastplace") -- Automatically jumps to the last place I was in a file
  use("rgroli/other.nvim") -- Quickly open alternate files 



  ----------------------------------------
  -- Language Specific Stuff
  ----------------------------------------

  -- Ruby on Rails
  use("vim-ruby/vim-ruby")
  use("tpope/vim-rails")
  use("tpope/vim-endwise")
  use("tpope/vim-bundler")

  -- Javascript
  use("pangloss/vim-javascript")
  use("elzr/vim-json")
  use("moll/vim-node")
  use("leafgarland/typescript-vim")
  use("evanleck/vim-svelte")
end)
