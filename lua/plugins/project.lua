return {
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup({
        -- Detection methods
        detection_methods = { "lsp", "pattern" },
        
        -- Patterns for project root detection
        patterns = { ".git"},
        
        -- Don't show hidden files in telescope
        show_hidden = false,
        
        -- When set to false, you will get a message when project.nvim changes your directory
        silent_chdir = false, 
        
        manual_mode = false,

        -- What scope to change the directory
        scope_chdir = 'global',
        
        -- Path where project.nvim will store the project history
        datapath = vim.fn.stdpath("data"),
      })
    end
  }
}
