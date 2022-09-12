require('nvim-treesitter.configs').setup({
  ensure_installed = { "lua", "css", "html", "javascript", "json", "ruby", "typescript", "yaml", "astro", "svelte" },
  auto_install = true,
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
    filetypes = { "html", "javascript", "javascriptreact", "typescriptreact", "svelte", "vue", "astro", "eruby", "svelte" },
  },
})
