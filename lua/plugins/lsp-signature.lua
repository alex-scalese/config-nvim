return {
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {
      bind = true, -- This is mandatory, otherwise border config won't get registered.
      handler_opts = {
        border = "rounded"
      },
      
      hi_parameter = "IncSearch",
      
      floating_window = true,
      floating_window_above_cur_line = true,
      
      auto_close_after = nil,
      hint_enable = true,
      hint_prefix = "🐼 ",
      
      -- GoLand-like behavior
      toggle_key = "<C-k>",
      select_signature_key = "<C-n>",
      
      -- Keybindings in signature window
      signature_map = {
        ["<C-k>"] = "toggle_signature_help",
        ["<C-n>"] = "select_signature_key",
        ["<C-p>"] = "prev_signature_key",
      },
    },
    config = function(_, opts)
      require('lsp_signature').setup(opts)
    end
  },
}
