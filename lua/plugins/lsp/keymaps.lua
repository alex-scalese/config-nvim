---@diagnostic disable: undefined-global

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local opts = { buffer = event.buf }
    local keymap = vim.keymap
    keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    keymap.set("n", "gr", vim.lsp.buf.references, opts)
    keymap.set("n", "gI", vim.lsp.buf.implementation, opts)
    keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
    keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    keymap.set("n", "K", vim.lsp.buf.hover, opts)
    keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format({ async = true })
    end, opts)
  end,
})
