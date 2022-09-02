vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  
  -- Theme
  use 'folke/tokyonight.nvim'
  
  -- UI/UX
  use("nvim-lua/plenary.nvim")
  use("nvim-telescope/telescope.nvim")

  -- Autocomplete
  use("github/copilot.vim")
 
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
end)
