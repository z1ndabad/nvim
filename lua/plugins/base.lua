return {
    -- More icons
    "nvim-tree/nvim-web-devicons",
    "echasnovski/mini.icons",

    -- "wtf does this keybind do again?"
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            preset = "helix",
            win = { height = { max = 10 } },
            keys = { scroll_up = "<up>", scroll_down = "<down>" },
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
    -- Syntax highlighting
    "sheerun/vim-polyglot",
    -- Misc
    "ThePrimeagen/vim-be-good",
}
