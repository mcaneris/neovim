local utils = require('utils')
local ok, plugin = pcall(require, 'lspsaga')

if ok then
  plugin.init_lsp_saga({
    code_action_lightbulb = {
      enable = true,
      sign = true,
      sign_priority = 20,
      virtual_text = false
    },
    code_action_keys = {
      quit = '<Esc>',
      exec = '<CR>'
    },
  })

  utils.wk_register({
    ['<leader>d'] = { name = 'Diagnostics '},
    ['<leader>dd'] = { '<cmd>Lspsaga show_line_diagnostics<CR>', 'Diagnostics' },
    ['<leader>d['] = { '<cmd>Lspsaga diagnostic_jump_prev<CR>', 'Previous' },
    ['<leader>d]'] = { '<cmd>Lspsaga diagnostic_jump_next<CR>', 'Next' },
    ['<leader>lk'] = { '<cmd>Lspsaga hover_doc<CR>', 'Documentation' },
    ['<leader>ls'] = { '<cmd>Lspsaga signature_help<CR>', 'Signature' },
    ['<leader>la'] = { '<cmd>Lspsaga code_action<CR>', 'Code Action (Line)' },
    ['<leader>lA'] = { '<cmd>Lspsaga range_code_action<CR>', 'Code Action (Range)' },
    ['<leader>ld'] = { '<cmd>Lspsaga preview_definition<CR>', 'Definition' },
    ['<leader>li'] = { '<cmd>Telescope lsp_implementations<CR>', 'Implementations' }
  })
end
