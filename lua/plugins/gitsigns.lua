local utils = require('utils')
local ok, plugin = pcall(require, 'gitsigns')

if ok then
  plugin.setup()

  utils.wk_register({
    ['<leader>g'] = { name = 'Git' },
    ['<leader>gl'] = { '<cmd>Lspsaga open_floaterm lazygit<CR>', 'Lazy Git' },
    ['<leader>gp'] = { '<cmd>Gitsigns preview<CR>', 'Preview Hunk' },
  })
end
