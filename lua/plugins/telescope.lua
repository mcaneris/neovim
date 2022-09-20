local utils = require('utils')
local ok, telescope = pcall(require, 'telescope')

if ok then
  local actions = require("telescope.actions")

  telescope.setup({
    defaults = {
      layout_config = {
        horizontal = {
          height = 0.9,
          preview_cutoff = 120,
          prompt_position = "bottom",
          width = 0.8
        },
      },
      mappings = {
        i = {
          ["<esc>"] = actions.close
        }
      }
    },
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      }
    }
  })

  telescope.load_extension('fzf')

  utils.wk_register({
    ['<leader>f'] = { name = 'Find' },
    ['<leader>fg'] = { '<cmd>Telescope live_grep<CR>', 'Grep' },
    ['<leader>ff'] = { '<cmd>Telescope find_files<CR>', 'Find File' },
    ['<leader>fr'] = { '<cmd>Telescope oldfiles<CR>', 'Recent Files' }
  })
end
