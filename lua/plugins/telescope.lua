return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      'ahmedkhalf/project.nvim',
      "nvim-tree/nvim-web-devicons",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      
      telescope.setup({
        defaults = {
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
          },
        },
      })
      
      -- load FZF extension
      telescope.load_extension("fzf")

      -- set keymaps
      local keymap = vim.keymap
      keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
      keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find in Files" })
      keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent Files" })
      keymap.set("n", "<leader>fc", "<cmd>Telescope commands<cr>", { desc = "Find Commands" })
      keymap.set("n", "<leader>fp", "<cmd>Telescope projects<cr>", {desc = "Find Projects" })

      keymap.set("n", "<leader><F12>", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Find Symbols" })
      keymap.set("n", "<leader><S-F12>", "<cmd>Telescope lsp_workspace_symbols<cr>", { desc = "Find Workspace Symbols" })

      -- load project plugin
      require('telescope').load_extension('projects')
    end,

  },
}
