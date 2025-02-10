local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.setup({})

vim.diagnostic.config({ virtual_text = true })


local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'},
    {name = 'path'},
    {name = 'luasnip'},
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = true}),
  }
})
