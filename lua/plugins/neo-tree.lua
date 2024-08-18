return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "echasnovski/mini.icons",
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {
        filesystem = {
            filtered_items = {
                visible = true,
            },
            -- let oil hijack netrw instead
            hijack_netrw_behavior = "disabled",
        },
    },
    keys = {
        {
            "<leader>e",
            "<cmd>Neotree toggle<CR>",
            desc = "Open file explorer sidebar",
        },
    },
}
