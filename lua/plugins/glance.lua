return {
  'dnlhc/glance.nvim',
  config = function()
    require('glance').setup({
      height = 18,
      zindex = 45,
      preview_win_opts = {
        cursorline = true,
        number = true,
        wrap = true,
      },
      list = {
        position = 'left',
        size = '67%',
      },
      theme = {
        enable = true,
        mode = 'auto',
      },
      hooks = {
        before_open = function(results, open)
          open(results)
          vim.defer_fn(function()
            require('glance').actions.enter_win('preview')()
          end, 30)
        end,
      },
      mappings = {
        list = {
          ['j'] = require('glance').actions.next,
          ['k'] = require('glance').actions.previous,
          ['<Down>'] = require('glance').actions.next,
          ['<Up>'] = require('glance').actions.previous,
          ['<CR>'] = require('glance').actions.jump,
          ['o'] = require('glance').actions.jump,
          ['<leader>l'] = require('glance').actions.enter_win('preview'),
          ['q'] = require('glance').actions.close,
          ['<Esc>'] = require('glance').actions.close,
        },
        preview = {
          ['Q'] = require('glance').actions.close,
          ['<Esc>'] = require('glance').actions.close,
          ['<leader>l'] = require('glance').actions.enter_win('list'),
        },
      },
    })

    vim.keymap.set('n', '<leader><Space>', '<cmd>Glance definitions<cr>', { desc = "Peek Definition" })
  end,
}
