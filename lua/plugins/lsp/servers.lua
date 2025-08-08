return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason-lspconfig.nvim" },
    config = function()
      local lspconfig = require("lspconfig")
      
      -- Load keymaps
      require("plugins.lsp.keymaps")
      
      -- Setup servers
      lspconfig.gopls.setup(require("plugins.lsp.settings.gopls"))
      lspconfig.lua_ls.setup(require("plugins.lsp.settings.lua_ls"))
    end,
  },
}
