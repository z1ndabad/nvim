return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    keys = {
        { "<leader>f", "<cmd>Telescope find_files<cr>", desc = "Find files" },
        { "<leader>F", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
        {
            "<leader>F",
            "<cmd>Telescope grep_string<cr>",
            mode = "v",
            desc = "Live grep selected",
        },
    },
}
