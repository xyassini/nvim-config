local status, telescope = pcall(require, "telescope")
if (not status) then
  return
end

telescope.setup({
  file_ignore_patterns = { "node_modules/", "node%_modules/", ".git/", ".vscode/" },
  defaults = {
    layout_strategy = 'horizontal',
    layout_config = {
      horizontal = {
        width = 0.9,
        height = 0.99
      }
    }
  },
})

