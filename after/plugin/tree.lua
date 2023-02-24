require("nvim-tree").setup({
  respect_buf_cwd = true,
  update_cwd = true,
  view = {
    width = 35
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
})

