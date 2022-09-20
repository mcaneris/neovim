local utils = require('utils')
local ok, plugin = pcall(require, "nvim-tree")

if ok then
  plugin.setup({
    actions = {
      open_file = {
        quit_on_open = true,
      }
    },
    view = {
      side = 'right',
      adaptive_size = true,
      mappings = {
        list = {
          { key = "u", action = "dir_up" },
        },
      },
    },
    update_focused_file = {
      enable = true,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
      custom = { ".git" },
    },
    git = {
      enable = true,
      ignore = false,
    }
  })

  utils.wk_register({
    ['<leader>e'] = { '<cmd>NvimTreeToggle<cr>', 'File Tree' }
  })
end
