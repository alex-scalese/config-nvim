return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      indent = {
        char = "│",  
        tab_char = "│",
      },
      scope = {
        enabled = true,
        char = "│",
        highlight = "IblScope",  
        show_start = true,
        show_end = true,
      },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard", 
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
        buftypes = {
          "terminal",
          "nofile",
          "quickfix",
          "prompt",
        },
      },
    },
    config = function(_, opts)
      require("ibl").setup(opts)
      
      -- Custom colors for Catppuccin
      local colors = require("catppuccin.palettes").get_palette()
      vim.api.nvim_set_hl(0, "IblIndent", { fg = colors.surface0 })  
      vim.api.nvim_set_hl(0, "IblScope", { fg = colors.pink })
    end,
  },
}
