return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = false,
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        
        default_component_configs = {
          container = {
            enable_character_fade = true
          },
          indent = {
            indent_size = 2,
            padding = 2,
            with_markers = true,
            indent_marker = "│",
            last_indent_marker = "└",
            highlight = "NeoTreeIndentMarker",
            with_expanders = true,
            expander_collapsed = "󰅂", 
            expander_expanded = "󰅀", 
            expander_highlight = "NeoTreeExpander",
          },
          icon = {
            folder_closed = "",
            folder_open = "", 
            folder_empty = "",
            default = "📄",
            highlight = "NeoTreeFileIcon"
          },
          git_status = {
            symbols = {
              added = "",      -- maybe ""
              modified = "",   -- maybe "M" 
              deleted = "",
              renamed = "",
              untracked = "",   -- maybe "?"
              ignored = "",     -- maybe "◌"
              unstaged = "",   -- maybe "✗"
              staged = "",      -- maybe "✓"
              conflict = "",    -- maybe "!" or ""
            }
          },
        },
        
        renderers = {
          directory = {
            { "indent" },
            { "icon" },
            { "current_filter" },
            {
              "container",
              width = "100%",
              right_padding = 1,
              content = {
                { "name", use_git_status_colors = true, zindex = 10 },
                {
                  "symlink_target",
                  zindex = 10,
                  highlight = "NeoTreeSymbolicLinkTarget",
                },
                { "clipboard", zindex = 10 },
                -- Git-Status rechts ausrichten
                { "git_status", zindex = 20, align = "right" },
                { "diagnostics", errors_only = true, zindex = 20, align = "right", hide_when_expanded = true },
              },
            },
          },
          file = {
            { "indent" },
            { "icon" },
            {
              "container",
              width = "100%",
              right_padding = 1,
              content = {
                { "name", use_git_status_colors = true, zindex = 10 },
                {
                  "symlink_target",
                  zindex = 10,
                  highlight = "NeoTreeSymbolicLinkTarget",
                },
                { "clipboard", zindex = 10 },
                -- Git-Status rechts ausrichten
                { "git_status", zindex = 20, align = "right" },
                { "diagnostics", errors_only = true, zindex = 20, align = "right" },
              },
            },
          },
        },

        window = {
          position = "left",
          width = 40,
          mapping_options = {
            noremap = true,
            nowait = true,
          },
          mappings = {
            ["<space>"] = { 
              "toggle_node", 
              nowait = false,
            },
            ["<2-LeftMouse>"] = "open",
            ["<cr>"] = "open",
            ["o"] = "open",
            ["S"] = "open_split",
            ["s"] = "open_vsplit",
            ["t"] = "open_tabnew",
            ["C"] = "close_node",
            ["a"] = { 
              "add",
              config = {
                show_path = "none"
              }
            },
            ["A"] = "add_directory",
            ["d"] = "delete", 
            ["r"] = "rename",
            ["y"] = "copy_to_clipboard",
            ["x"] = "cut_to_clipboard",
            ["p"] = "paste_from_clipboard",
            ["c"] = "copy",
            ["m"] = "move",
            ["q"] = "close_window",
            ["R"] = "refresh",
            ["?"] = "show_help",
          }
        },

        filesystem = {
          filtered_items = {
            visible = false,
            hide_dotfiles = true,
            hide_gitignored = true,
            hide_by_name = {
              ".DS_Store",
              "thumbs.db"
            },
          },
          follow_current_file = {
            enabled = false,
          },
          group_empty_dirs = false,
          hijack_netrw_behavior = "open_default",
          use_libuv_file_watcher = false,
        },

        git_status = {
          window = {
            position = "float",
            mappings = {
              ["A"]  = "git_add_all",
              ["gu"] = "git_unstage_file",
              ["ga"] = "git_add_file",
              ["gr"] = "git_revert_file",
              ["gc"] = "git_commit",
              ["gp"] = "git_push",
              ["gg"] = "git_commit_and_push",
            }
          }
        }
      })

      -- set keymap
      vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle Neo-tree" })
    end,
  },
}
