return {
    "stevearc/oil.nvim",
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    lazy = false,
    opts = {
        default_file_explorer = true,
        columns = {
            "icon",
            "permissions",
            "size",
        },
        delete_to_trash = true,
        view_options = {
            show_hidden = true,
        },
        skip_confirm_for_simple_edits = true,
        lsp_file_methods = {
            timeout_ms = 1000,
            autosave_changes = false,
        },
        git = {
            add = function()
                return false
            end,
            mv = function()
                return true
            end,
            rm = function()
                return true
            end,
        },

        -- redefine keymaps so C-h and C-l do not conflict with window-switching in vim-tmux-navigator
        keymaps = {
            ["g?"] = "actions.show_help",
            ["<CR>"] = "actions.select",
            ["<C-v>"] = {
                "actions.select",
                opts = { vertical = true },
                desc = "Open the entry in a vertical split",
            },
            ["<C-x>"] = {
                "actions.select",
                opts = { horizontal = true },
                desc = "Open the entry in a horizontal split",
            },
            ["<C-t>"] = {
                "actions.select",
                opts = { tab = true },
                desc = "Open the entry in new tab",
            },
            ["<C-p>"] = "actions.preview",
            ["<C-c>"] = "actions.close",
            ["<C-r>"] = "actions.refresh",
            ["-"] = "actions.parent",
            ["_"] = "actions.open_cwd",
            ["`"] = "actions.cd",
            ["~"] = {
                "actions.cd",
                opts = { scope = "tab" },
                desc = ":tcd to the current oil directory",
            },
            ["gs"] = "actions.change_sort",
            ["gx"] = "actions.open_external",
            ["g."] = "actions.toggle_hidden",
            ["g\\"] = "actions.toggle_trash",
        },
        use_default_keymaps = false,
    },
    keys = {
        { "-", "<cmd>Oil<CR>", desc = "Open Oil in parent dir" },
    },
}
