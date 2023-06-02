local status, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status) then
  print("Error: Treesitter not installed.")
  return
end

treesitter.setup({
  ensure_installed = {
    "tsx",
    "typescript",
    "javascript",
    "html",
    "css",
    "vue",
    "astro",
    "svelte",
    "gitcommit",
    "graphql",
    "json",
    "json5",
    "lua",
    "markdown",
    "prisma",
    "vim",
  },
  sync_install = false,
  highlight = {
    enable = true,
  },

  incremental_selection = {
    enable = false,
    keymaps = {
      init_selection    = "<leader>gnn",
      node_incremental  = "<leader>gnr",
      scope_incremental = "<leader>gne",
      node_decremental  = "<leader>gnt",
    },
  },

  indent = {
    enable = true
  },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
})
