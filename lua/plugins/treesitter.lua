return {
  {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { 
          "go", 
          "gomod", 
          "gosum", 
          "proto",
          "toml",
          "markdown", 
          "sql", 
          "terraform",
          "xml",
          "tmux", 
          "yaml", 
          "json", 
          "json5",
          "make", 
          "bash",
          "lua", 
          "vim", 
          "vimdoc", 
          "javascript", 
          "html"
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
    end,
  },
}
