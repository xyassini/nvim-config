local status, treesitter = pcall(require, "nvim-treesitter")
if not status then
  return
end

local configs = require("nvim-treesitter.configs")
local parsers = require("nvim-treesitter.parsers")

configs.setup({
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

local parser_config = parsers.get_parser_configs()
parser_config.embedded_template = {
  install_info = {
    url = "https://github.com/tree-sitter/tree-sitter-embedded-template",
    files = { "src/parser.c" },
    requires_generate_from_grammar = false,
  },
}

local ft_to_parser = parsers.filetype_to_parsername
ft_to_parser.ejs = "embedded_template"

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.ejs",
  command = "set filetype=ejs",
})
