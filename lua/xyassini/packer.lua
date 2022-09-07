vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- Theme
  use "folke/tokyonight.nvim"

  -- UI/UX
  use("nvim-lua/plenary.nvim")
  use("nvim-telescope/telescope.nvim")
  use("Pocco81/auto-save.nvim")
  use("sunjon/shade.nvim")
  use {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons",
    },
  }
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-web-devicons" },
  }

  -- Autocomplete
  use("github/copilot.vim")
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-copilot")
  
  use("folke/trouble.nvim")
  use("aca/emmet-ls")

  -- Git
  use("kdheepak/lazygit.nvim")

  -----------------------------------------------
  -- Syntax Highlighting/Programming Languages --
  -----------------------------------------------

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
