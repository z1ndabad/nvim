return {
    "akinsho/bufferline.nvim",
    version = "*",
    lazy = false,
    config = function()
        local bufferline = require("bufferline")
        bufferline.setup({
            -- separator colors for next time, so you don't want to shoot yourself
            highlights = require("catppuccin.groups.integrations.bufferline").get({
                styles = {}, -- no bold/italics
                custom = {
                    macchiato = {
                        fill = {},
                        separator_selected = {},
                        separator_visible = {},
                        separator = {},
                    },
                },
            }),
            options = {
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "File explorer",
                        highlight = "Directory",
                        text_align = "left",
                        separator = false,
                    },
                },
                separator_style = "slope",
                diagnostics = "nvim_lsp",
            },
        })
    end,
    keys = {
        { "gb", "<cmd>BufferLinePick<cr>", desc = "Quick select buffer" },
    },
}
