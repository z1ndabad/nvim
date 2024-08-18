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
    },
    keys = {
        { "<leader>-", "<cmd>Oil<CR>", desc = "Open Oil in parent dir" },
    },
}
