local formatter = require("formatter")

formatter.setup({
  filetype = {
    lua = {
      require("formatter.filetypes.lua").stylua,
    },

    ruby = {
      require("formatter.filetypes.ruby").rubocop,
    },

    svelte = {
      require("formatter.defaults.prettier"),
    },

    javascript = {
      require("formatter.defaults.prettier"),
    },

    typescript = {
      require("formatter.defaults.prettier"),
    },

    json = {
      require("formatter.defaults.prettier"),
    },

    css = {
      require("formatter.defaults.prettier"),
    },

    html = {
      require("formatter.defaults.prettier"),
    },

    eruby = {
      require("formatter.defaults.prettier"),
    },

    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_spaces,
    },
  },
})
