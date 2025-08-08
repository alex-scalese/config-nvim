return {
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        keymaps = {
          visual = "S",
          delete = "ds", 
          change = "cs",
        },
      })


      local keymap = vim.keymap
      keymap.set("v", '<leader>"', 'S"', { desc = "Surround with quotes" })
      keymap.set("v", "<leader>'", "S'", { desc = "Surround with single quotes" })
      keymap.set("v", "<leader>(", "S)", { desc = "Surround with parentheses" })
      keymap.set("v", "<leader>{", "S}", { desc = "Surround with braces" })

      keymap.set("n", '<leader>"', 'ysiw"', { desc = "Quote word" })
      keymap.set("n", "<leader>'", "ysiw'", { desc = "Single quote word" })
      keymap.set("n", "<leader>(", "ysiw)", { desc = "Surround word with ()" })
      keymap.set("n", "<leader>{", "ysiw}", { desc = "Surround word with {}" })
    end,
  },
}
