local status, formatter = pcall(require, "formatter")

if (not status) then
  return
end

formatter.setup({
  filetype = {
    html = {
      require("formatter.defaults.prettier")
    },
    typescriptreact = {
      require("formatter.defaults.prettier")
    },
    typescript = {
      require("formatter.defaults.prettier")
    },
    svelte = {
      require("formatter.defaults.prettier")
    },
    javascript = {
      require("formatter.defaults.prettier")
    },
    javascriptreact = {
      require("formatter.defaults.prettier")
    },
    lua = {
      require("formatter.filetypes.lua").stylua
    },
  }
})
