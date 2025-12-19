return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason-lspconfig.nvim" },
    config = function()
      local lspconfig = require("lspconfig")
      
      -- Load keymaps
      require("plugins.lsp.keymaps")
      
      -- Setup servers
      vim.lsp.config.gopls = require("plugins.lsp.settings.gopls")
      vim.lsp.config.gopls = require("plugins.lsp.settings.lua_ls")
    end,
  },
}
