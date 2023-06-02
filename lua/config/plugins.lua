return {
  ----------------------------------------
  -- Themes
  ----------------------------------------
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("config.colorscheme")
    end,
  },

  ----------------------------------------
  -- User Interface
  ----------------------------------------
  { "nvim-lua/plenary.nvim" }, -- Required by telescope
  {
    "nvim-tree/nvim-web-devicons",
    cmd = {
      "NvimTreeToggle",
      "NvimTreeOpen",
      "NvimTreeClose",
      "NvimTreeRefresh",
      "NvimTreeFindFile",
    },
    config = function()
      require("nvim-web-devicons").setup({ default = true })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = {
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "cljoly/telescope-repo.nvim" },
    },
    config = function()
      require("plugins.telescope")
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("plugins.tree")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("plugins.lualine")
    end,
  },
  {
    "folke/which-key.nvim",
    config = function()
      require("plugins.which-key")
    end,
  },
  {
    "andreadev-it/shade.nvim",
    event = "BufReadPre",
    config = function()
      require("plugins.shade")
    end,
  },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("plugins.dressing")
    end,
  },

  ----------------------------------------
  -- Productivity
  ----------------------------------------
  {
    "numToStr/Comment.nvim", -- Toggle Comments
    event = "BufReadPre",
    branch = "jsx",
    config = function()
      require("plugins.comment")
    end,
  },
  {
    "RRethy/vim-illuminate", -- Highlight current word/method/var
    lazy = false,
    config = function()
      require("plugins.illuminate")
    end,
  },
  { "nvim-pack/nvim-spectre" }, -- Find and replace
  {
    "kylechui/nvim-surround",   -- Quickly change surrounding brackets, quotes, tags, whatever
    lazy = false,
    config = true,
  },
  {
    "gaelph/logsitter.nvim",
    event = "BufEnter *.{ts,tsx,js,jsx,svelte,vue}",
  },
  {
    "ethanholz/nvim-lastplace",
    event = "BufWinEnter",
    config = function()
      require("plugins.lastplace")
    end,
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
    dependencies = "tpope/vim-repeat",
    config = function()
      require("plugins.leap")
    end,
  },

  ----------------------------------------
  -- Syntax
  ----------------------------------------
  {
    "windwp/nvim-autopairs", -- Auto-match brackets and quotes
    event = "InsertEnter",
    config = function()
      require("plugins.autopairs")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufReadPre",
    config = function()
      require("plugins.treesitter")
    end,
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
      "tree-sitter/tree-sitter-embedded-template",
      { "elgiano/nvim-treesitter-angular", branch = "topic/jsx-fix" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPre",
    config = function()
      require("plugins.treesitter-context")
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("plugins.colorizer")
    end,
  },

  ----------------------------------------
  -- LSP Base
  ----------------------------------------
  {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    dependencies = {
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    servers = nil,
  },
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
  },

  ----------------------------------------
  -- LSP - Formatters
  ----------------------------------------
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "BufNewFile",
    dependencies = { "mason.nvim" },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      require("plugins.null-ls")
    end,
  },

  ----------------------------------------
  -- LSP - Autocomplete
  ----------------------------------------
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    config = function()
      require("plugins.cmp")
    end,
    dependencies = {
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-calc",
      "saadparwaiz1/cmp_luasnip",
      { "L3MON4D3/LuaSnip", dependencies = "rafamadriz/friendly-snippets" },
      {
        "David-Kunz/cmp-npm",
        config = function()
          require("plugins.cmp-npm")
        end,
      },
      {
        "zbirenbaum/copilot-cmp",
        config = function()
          require("copilot_cmp").setup()
        end,
      },
    },
  },

  ----------------------------------------
  -- LSP - Addons
  ----------------------------------------
  {
    "jose-elias-alvarez/typescript.nvim",
    event = "BufReadPre",
    ft = {
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "svelte",
    },
    config = function()
      require("plugins.typescript")
    end,
  },
  {
    "axelvc/template-string.nvim",
    event = "InsertEnter",
    ft = {
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
    },
    config = true, -- run require("template-string").setup()
  },
  {
    "lvimuser/lsp-inlayhints.nvim",
    event = "LspAttach",
    config = function()
      require("plugins.inlay-hints")
    end,
  },
  {
    "zbirenbaum/copilot.lua", -- GitHub Copilot
    event = "InsertEnter",
    config = function()
      require("plugins.copilot")
    end,
  },

  ----------------------------------------
  -- Git
  ----------------------------------------
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.gitsigns")
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitCurrentFile",
      "LazyGitFilterCurrentFile",
      "LazyGitFilter",
    },
    config = function()
      vim.g.lazygit_floating_window_scaling_factor = 1
    end,
  },

  ----------------------------------------
  -- JavaScript/TypeScript
  ----------------------------------------
  {
    "vuki656/package-info.nvim",
    event = "BufEnter package.json",
    config = function()
      require("plugins.package-info")
    end,
  },
  {
    "dmmulroy/tsc.nvim",
    event = "BufEnter *.ts",
    config = true, -- run require("tsc").setup()
  },

  ----------------------------------------
  -- Misc
  ----------------------------------------
  {
    "Pocco81/auto-save.nvim",
    event = "InsertLeave",
    config = function()
      require("plugins.auto-save")
    end,
  },
  {
    "rgroli/other.nvim",
    event = "BufReadPre",
    config = function()
      require("plugins.other")
    end,
  },
  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
  },
}
