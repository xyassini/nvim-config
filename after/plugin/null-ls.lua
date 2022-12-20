local null_ls = require("null-ls")

local default_filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "astro", "svelte" }

local sources = {
  null_ls.builtins.code_actions.eslint_d.with({
    filetypes = default_filetypes,
  }),

  null_ls.builtins.formatting.prettierd.with({
    filetypes = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "astro",
      "svelte",
      "json",
      "html",
      "vue",
      "jsonc",
    },
  }),

  null_ls.builtins.code_actions.refactoring.with({
    filetypes = { "ruby", "lua", "typescript", "javascript" },
  }),

  null_ls.builtins.diagnostics.tsc.with({
    filetypes = { "typescript", "typescriptreact", "svelte" },
  }),

  null_ls.builtins.code_actions.shellcheck,
  null_ls.builtins.diagnostics.shellcheck,
  null_ls.builtins.diagnostics.checkmake,
  null_ls.builtins.diagnostics.erb_lint,
  null_ls.builtins.diagnostics.hadolint,
  null_ls.builtins.diagnostics.jsonlint,
  null_ls.builtins.diagnostics.markdownlint,
  null_ls.builtins.diagnostics.stylelint,
  null_ls.builtins.diagnostics.tidy,
  null_ls.builtins.diagnostics.todo_comments,
  null_ls.builtins.diagnostics.yamllint,
  null_ls.builtins.formatting.erb_lint,
  null_ls.builtins.formatting.packer,
  null_ls.builtins.formatting.prismaFmt,
  null_ls.builtins.formatting.rubocop,
  null_ls.builtins.formatting.stylelint,
  null_ls.builtins.formatting.stylua,
  null_ls.builtins.formatting.taplo,
  null_ls.builtins.formatting.terraform_fmt,
}

null_ls.setup({
  sources = sources,
})
