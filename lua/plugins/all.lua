return {
    -- Colors
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme catppuccin]])
        end
    },
    {
        'Mofiqul/vscode.nvim'
    },
    
    -- Programming
    {
        'sheerun/vim-polyglot'
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- opts = {...} for additional options
    },

    -- Misc
    {
        'ThePrimeagen/vim-be-good',
    },
}
