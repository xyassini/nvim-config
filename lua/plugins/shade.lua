local status, shade = pcall(require, "shade")
if (not status) then
  print("Error loading shade")
  return
end

shade.setup({
  overlayy_opacity = 50,
  opacity_step = 1,
  exclude_filetypes = { "NvimTree", "mason" },
  keys = {
    brightness_up = "<C-Up>",
    brightness_down = "<C-Down>",
    toggle = "<Leader>y",
  },
})
