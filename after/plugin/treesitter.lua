require('nvim-treesitter.configs').setup({
  ensure_installed = { "lua", "css", "html", "javascript", "json", "ruby", "typescript", "yaml", "astro" },
  auto_install = true,
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
})
