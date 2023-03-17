vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  ----------------------------------------
  -- Themes
  ----------------------------------------
  use("folke/tokyonight.nvim")

  ----------------------------------------
  -- User Interface
  ----------------------------------------
  use("sunjon/shade.nvim") -- Shade inactive windows
  use("nvim-lua/plenary.nvim") -- Required by telescope
  use("nvim-telescope/telescope.nvim") -- Fuzzy finder
  use("kyazdani42/nvim-web-devicons")
  use("nvim-lualine/lualine.nvim") -- Statusline
  use("kyazdani42/nvim-tree.lua") -- File explorer
  use("folke/which-key.nvim") -- Keybindings

  ----------------------------------------
  -- Productivity
  ----------------------------------------
  use("numToStr/Comment.nvim") -- Toggle Comment etc.
  use("nvim-pack/nvim-spectre") -- Find and Replace
  use("RRethy/vim-illuminate") -- Highlight current word/method/var

  ----------------------------------------
  -- Language Server Protocol
  ----------------------------------------
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("jayp0521/mason-null-ls.nvim")
  use("neovim/nvim-lspconfig") -- LSP configuration
  use("jose-elias-alvarez/null-ls.nvim")
  use("folke/trouble.nvim") -- diagnostics
  use("ray-x/lsp_signature.nvim") -- function signatures on hover
  use("mhartington/formatter.nvim") -- Format with prettier etc.
  use("MunifTanjim/prettier.nvim")

  ----------------------------------------
  -- Autocomplete
  ----------------------------------------
  use("aca/emmet-ls") -- Emmet support
  use("github/copilot.vim") -- Copilot support (AI code completion)
  use("hrsh7th/nvim-cmp") -- Autocomplete
  use("hrsh7th/cmp-nvim-lsp") -- LSP completion
  use("hrsh7th/cmp-buffer") -- Buffer completion
  use("hrsh7th/cmp-path") -- Path completion
  use({ "zbirenbaum/copilot.lua" })
  use({
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  }) -- Copilot completion
  use({ "L3MON4D3/LuaSnip", tag = "v1.*" }) -- Snippets
  use("rafamadriz/friendly-snippets") -- Snippets

  ----------------------------------------
  -- Syntax
  ----------------------------------------
  use("jiangmiao/auto-pairs") -- Auto-match brackets and quotes
  use("windwp/nvim-ts-autotag") -- Auto-close HTML tags
  use("tpope/vim-surround") -- Quickly change surrounding brackets, quotes, tags, whatever
  use("nvim-treesitter/nvim-treesitter-context") -- Sticks the current method I'm in to the top
  use({ "elgiano/nvim-treesitter-angular", branch = "topic/jsx-fix" }) -- Angular Treesitter
  use("sakshamgupta05/vim-todo-highlight") -- Highlights TODOs
  use("tree-sitter/tree-sitter-embedded-template") -- Embedded template support

  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
  }) -- Syntax highlighting

  ----------------------------------------
  -- Git
  ----------------------------------------
  use("kdheepak/lazygit.nvim")
  use("lewis6991/gitsigns.nvim") -- Git highlights on the left

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
  use("ThePrimeagen/vim-be-good") -- Vim practice
  use({
    "ThePrimeagen/refactoring.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  })
  use({
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
  })

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

  -- Angular
  use("joeveiga/ng.nvim")

  -- Svelte
  use("othree/html5.vim")
  use("evanleck/vim-svelte")
end)
