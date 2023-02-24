require('nvim-treesitter.configs').setup({
  ensure_installed = { "lua", "css", "scss", "html", "javascript", "json", "yaml" },
  auto_install = true,
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
    filetypes = { "html" },
  },
})
