local formatter = require("formatter")

formatter.setup({
  filetype = {
    html = {
      require("formatter.defaults.prettier")
    },
    typescript = {
      require("formatter.defaults.prettier")
    },
    javascript = {
      require("formatter.defaults.prettier")
    },
  }
})
