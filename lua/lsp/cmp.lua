-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-P>'] = cmp.mapping.select_prev_item(),
    ['<C-N>'] = cmp.mapping.select_next_item(),
    ['<C-D>'] = cmp.mapping.scroll_docs(-4),
    ['<C-F>'] = cmp.mapping.scroll_docs(4),
    ['<C-SPACE>'] = cmp.mapping.complete(),
    ['<C-E>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end
  },

  documentation = {
    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'latex_symbols' },
  },
  formatting = {
    format = function(entry, vim_item)
      -- fancy icons and a name of kind
      vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind

      -- set a name for each source
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        nvim_lua = "[Lua]",
       -- cmp_tabnine = "[TN]",
        luasnip = "[LuaSnip]",
        buffer = "[Buffer]",
        path = "[Path]",
        latex_symbols = "[Latex]",
      })[entry.source.name]
      return vim_item
    end,
  },

  experimental = {
    native_menu = false,

    ghost_text = true,
  },
}
