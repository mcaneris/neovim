local utils = require('utils')

local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Buffer 
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', default_opts)

vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', default_opts)

vim.api.nvim_set_keymap(
  'n', '<leader>bp', ':bprevious<CR>',
  { noremap = true, silent = true, desc = "Previous Buffer" }
)

vim.api.nvim_set_keymap(
  'n', '<leader>bn', ':bnext<CR>',
  { noremap = true, silent = true, desc = "Next Buffer" }
)

vim.api.nvim_set_keymap(
  'n', '<leader>bd', ':bd<CR>',
  { noremap = true, silent = true, desc = "Delete Buffer" }
)

vim.api.nvim_set_keymap(
  'n', '<leader><space>', ':b#<CR>',
  { noremap = true, silent = true, desc = "Last Buffer" }
)

utils.wk_register({
  ['<leader>b'] = { name = 'Buffer' },
})
