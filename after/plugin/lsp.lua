local status, lspconfig = pcall(require, "lspconfig")

if (not status) then
  return
end



------------------------------------------------------------------------
-- Actions / Keybinds
------------------------------------------------------------------------

vim.api.nvim_create_autocmd("User", {
  pattern = "LspAttached",
  desc = "LSP actions",
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = { buffer = true }
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Displays hover information about the symbol under the cursor
    bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")

    -- Jump to the definition
    bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")

    -- Jump to declaration
    bufmap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")

    -- Lists all the implementations for the symbol under the cursor
    bufmap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")

    -- Jumps to the definition of the type symbol
    bufmap("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>")

    -- Lists all the references
    bufmap("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")

    -- Displays a function's signature information
    bufmap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<cr>")

    -- Renames all references to the symbol under the cursor
    bufmap("n", "<C-0>", "<cmd>lua vim.lsp.buf.rename()<cr>")

    -- Show diagnostics in a floating window
    bufmap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>")

    -- Move to the previous diagnostic
    bufmap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>")

    -- Move to the next diagnostic
    bufmap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>")
  end,
})

--------------------------------------------------------------------------------
-- Defaults
--------------------------------------------------------------------------------

-- Setup cmp_nvim_lsp

local cmp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if (not cmp_status) then
  return
end

local lsp_defaults = {
  capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities()),
  on_attach = function(_, bufnr)
    vim.api.nvim_exec_autocmds("User", { pattern = "LspAttached" })
  end,
}


-- Apply defaults to all configs
lspconfig.util.default_config = vim.tbl_deep_extend("force", lspconfig.util.default_config, lsp_defaults)

--------------------------------------------------------------------------------
-- LSP servers
--------------------------------------------------------------------------------

-- Rust
-- lspconfig.rust_analyzer.setup({})

-- Go
-- lspconfig.gopls.setup({})

-- Emmet
lspconfig.emmet_ls.setup({
  filetypes = {
    "html",
    "javascriptreact",
    "typescriptreact",
    "svelte",
    "vue",
    -- "ejs",
    "eruby",
    "astro",
  },
})

-- C++
lspconfig.sourcekit.setup({})

-- Typescript
lspconfig.tsserver.setup({})

-- Svelte
lspconfig.svelte.setup({})

-- Prisma
lspconfig.prismals.setup({
  root_dir = lspconfig.util.root_pattern("prisma/"),
})

-- JSON
lspconfig.jsonls.setup({})

-- HTML
--[[
lspconfig.html.setup({
  filetypes = {
    "html",
    "eruby",
    "astro",
    "svelte",
  },
})
]]
--

-- Docker
lspconfig.dockerls.setup({})

-- ESLint
lspconfig.eslint.setup({
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "vue",
    "svelte",
    "astro",
  },
})

-- Angular
lspconfig.angularls.setup({})

-- Talwind CSS
lspconfig.tailwindcss.setup({
  filetypes = {
    "html",
    "css",
    "scss",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "svelte",
    "vue",
    "markdown",
    "eruby",
    "astro",
  },
  init_options = {
    eruby = "erb",
  },
  root_dir = lspconfig.util.root_pattern(
    "tailwind.config.js",
    "tailwind.config.cjs",
    "windi.config.cjs",
    "windi.config.js",
    "windi.config.ts",
    "postcss.config.js",
    "postcss.config.cjs"
  ),
})

-- CSS & SCSS
lspconfig.cssls.setup({})

-- Solargraph
-- lspconfig.solargraph.setup({})

-- Astro
lspconfig.astro.setup({})

-- Lua
lspconfig.lua_ls.setup({
  cmd = { "lua-language-server" },
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
        path = vim.split(package.path, ";"),
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
        },
      },
    },
  },
})

local signature_status, lsp_signature = pcall(require, "lsp_signature")
if (not signature_status) then
  return
end

lsp_signature.setup({
  bind = true,
  handler_opts = {
    border = "rounded"
  },
  always_trigger = true
})
