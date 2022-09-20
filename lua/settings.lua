vim.opt.clipboard = 'unnamedplus'
vim.opt.guifont = 'FiraCode Nerd Font:h16'
vim.opt.hidden = true

-- Indenting
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.fillchars = { eob = ' ' }
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = "a"

-- Numbers
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.ruler = false

-- Visual
vim.wo.colorcolumn = '100'

vim.opt.whichwrap:append '<>[]hl'

vim.g.mapleader = ' '
vim.o.swapfile = false

-- LSP Diagnostics Global Config
vim.diagnostic.config({
  signs = true,
  underline = true,
  virtual_text = false
})
