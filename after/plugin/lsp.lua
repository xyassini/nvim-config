require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")

-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


--------------------------------------------------------------------------------
-- LSP servers
--------------------------------------------------------------------------------

-- Typescript
lspconfig.tsserver.setup({})

-- Svelte
lspconfig.svelte.setup({})

-- Prisma
lspconfig.prismals.setup({
  root_dir = lspconfig.util.root_pattern('prisma/')
})

-- JSON
lspconfig.jsonls.setup({})

-- HTML
lspconfig.html.setup({})

-- Docker
lspconfig.dockerls.setup({})

-- ESLint
lspconfig.eslint.setup({})

-- Angular
lspconfig.angularls.setup({})

-- Talwind CSS
lspconfig.tailwindcss.setup({
  init_options = {
    eruby = "erb"
  },
  root_dir = lspconfig.util.root_pattern("tailwind.config.js", "tailwind.config.cjs", "postcss.config.js", "postcss.config.cjs"),
})

-- Solargraph
lspconfig.solargraph.setup({})

-- Astro
lspconfig.astro.setup({})

-- Lua
lspconfig.sumneko_lua.setup({
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
