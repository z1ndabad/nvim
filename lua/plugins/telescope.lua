return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    opts = {
        defaults = {
            file_ignore_patterns = {
                "yarn.lock",
                "package%-lock.json",
                "pnpm%-lock.yaml",
                ".git/.*",
            },
        },
        pickers = {
            find_files = {
                hidden = true,
            },
        },
    },
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
