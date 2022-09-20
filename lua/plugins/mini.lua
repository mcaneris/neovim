require('mini.bufremove').setup()
require('mini.comment').setup()
require('mini.completion').setup()
require('mini.cursorword').setup()
require('mini.fuzzy').setup()
require('mini.indentscope').setup()
require('mini.jump').setup()
require('mini.jump2d').setup()
require('mini.pairs').setup()
require('mini.starter').setup()
-- require('mini.statusline').setup()
require('mini.surround').setup()
require('mini.tabline').setup()
require('mini.trailspace').setup()

-- mini.completion
-- use <Tab> and <S-Tab> to navigate matches
vim.api.nvim_set_keymap(
  'i', '<Tab>',
  [[pumvisible() ? "\<C-n>" : "\<Tab>"]],
  { noremap = true, expr = true }
)
vim.api.nvim_set_keymap(
  'i', '<S-Tab>',
  [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]],
  { noremap = true, expr = true }
)
