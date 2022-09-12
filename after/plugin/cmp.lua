local cmp = require("cmp")
local luasnip = require("luasnip")

local select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end
  },

  sources = cmp.config.sources({
    { name = "copilot" },
    { name = "nvim_lsp", keyword_length = 3 },
    { name = "path", keyword_length = 2 },
    { name = "luasnip", keyword_length = 2 },
    { name = "nvim_lsp_document_symbol", keyword_length = 3 }
  },{
    { name = "buffer" }
  }),

  window = {
    documentation = cmp.config.window.bordered()
  },

  formatting = {
    fields = {'menu', 'abbr', 'kind'},
    format = function(entry, vim_item)
      vim_item.menu = ({
        nvim_lsp = "",
        luasnip = "",
        buffer = "",
        path = "",
        copilot = "ﮧ",
      })[entry.source.name]
      return vim_item
    end
  },

  mapping = {
    ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
    ['<Down>'] = cmp.mapping.select_next_item(select_opts),
    ['<Left>'] = cmp.mapping.scroll_docs(-4),
    ['<Right>'] = cmp.mapping.scroll_docs(4),

    ['<ESC>'] = cmp.mapping.close(),
    ['<Tab>'] = cmp.mapping(function(fallback)
      -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
      if cmp.visible() then
        local entry = cmp.get_selected_entry()
        if not entry then
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        else
          cmp.confirm()
        end
      else
        fallback()
      end
    end, {"i","s","c",}),
  }
})

