-- completion maps (not cmp) --
-- line completion - use more!
-- inoremap <C-l> <C-x><C-l>
vim.api.nvim_set_keymap("i", "<c-k>", "<c-x><c-l>", { noremap = true })
-- Vim command-line completion
-- inoremap <C-v> <C-x><C-v>
vim.api.nvim_set_keymap("i", "<c-v>", "<c-x><c-v>", { noremap = true })
-- end non-cmp completion maps --

-- Setup nvim-cmp
local cmp = require "cmp"

-- lspkind
--local lspkind = require "lspkind"
--lspkind.init {
--  with_text = true,
--  symbol_map = {
--    Text        = '',
--    Method      = 'ƒ',
--    Function    = 'ﬦ',
--    Constructor = '',
--    Variable    = '',
--    Class       = '',
--    Interface   = 'ﰮ',
--    Module      = '',
--    Property    = '',
--    Unit        = '',
--    Value       = '',
--    Enum        = '了',
--    Keyword     = '',
--    Snippet     = '﬌',
--    Color       = '',
--    File        = '',
--    Folder      = '',
--    EnumMember  = '',
--    Constant    = '',
--    Struct      = '',
--  },
--}

cmp.setup {
  --snippet = {
  --  expand = function(args)
  --    require('luasnip').
  --  end,
  --},
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping { i = cmp.mapping.confirm { select = true } },
    ['<Right>'] = cmp.mapping { i = cmp.mapping.confirm { select = true } },
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert }, { 'i' }),
    ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert }, { 'i' }),
  },
  experimental = {
    ghost_text = false,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'treesitter' },
    { name = 'vsnip' },
    { name = 'path' },
    {
      name = 'buffer',
      option = {
        get_bufnrs = function()
          return vim.api.nvim_list_bufs()
        end,
      },
    },
  },
  completion = {
    --keyword_length = 3
  },
  formatting = {
    format = function(entry, vim_item)
      --vim_item.kind = string.format("%s %s", lspkind.presets.default[vim_item.kind], vim_item.kind)
      vim_item.menu = ({
        nvim_lsp   = 'ﲳ',
        nvim_lua   = '',
        treesitter = '',
        path       = 'ﱮ',
        buffer     = '﬘',
        zsh        = '',
        vsnip      = '',
        spell      = '暈',
      })[entry.source.name]

      return vim_item
    end,
  },

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'cmdline' },
      }, {
        { name = 'path' },
      })
  }),

  cmp.setup.cmdline('/', {
      sources = cmp.config.sources({
        { name = 'nvim_lsp_document_symbol' }
      }, {
        { name = 'buffer' }
      })
  })
}
