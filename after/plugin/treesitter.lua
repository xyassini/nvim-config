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

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.embedded_template = {
  install_info = {
    url = "https://github.com/tree-sitter/tree-sitter-embedded-template",
    files = {"src/parser.c"},
    requires_generate_from_grammar = false,
  },
}

local ft_to_parser = require"nvim-treesitter.parsers".filetype_to_parsername
ft_to_parser.ejs = "embedded_template"

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*.ejs",
  command = "set filetype=ejs"
})
