require("treesitter-context").setup({
  enable = true,
  patterns = {
    default = {
      'class',
      'function',
      'method',
      'for',
      'while',
      'if',
      'switch',
      'case',
    },
    markdown = {
      'section',
    },
    json = {
      'pair',
    },
    yaml = {
      'block_mapping_pair',
    },
  }
})
