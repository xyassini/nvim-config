require("xyassini")

local isDarkMode = true

local function open_nvim_tree(data)
  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

local function darkTheme()
  isDarkMode = true
  vim.g.tokyonight_transparent_sidebar = true
  vim.g.tokyonight_transparent = true
  vim.opt.background = "dark"

  require("tokyonight").setup({
    style = "night",
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  })

  vim.cmd("colorscheme tokyonight")
end

local function lightTheme()
  isDarkMode = false
  vim.g.tokyonight_transparent_sidebar = false
  vim.g.tokyonight_transparent = false
  vim.opt.background = "light"

  require("tokyonight").setup({
    style = "day",
    transparent = false,
    styles = {
      sidebars = "light",
      floats = "light",
    },
  })

  vim.cmd("colorscheme tokyonight-day")
end

function ToggleTheme()
  if isDarkMode then
    lightTheme()
  else
    darkTheme()
  end
end

darkTheme()
