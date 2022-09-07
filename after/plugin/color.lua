vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.background = "dark"


require("tokyonight").setup({
  style = "night",
  transparent = true,
  styles = {
    sidebars = "transparent",
    flaots = "transparent"
  }
})

vim.cmd("colorscheme tokyonight")

