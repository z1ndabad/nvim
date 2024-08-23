return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "echasnovski/mini.icons" },
    opts = {
        options = {
            -- one statusline for all windows
            globalstatus = true,
            refresh = {
                statusline = 50,
            },
        },
        sections = {
            lualine_a = {
                "mode",
            },
            lualine_c = {
                {
                    "buffers",
                    symbols = {
                        alternate_file = "",
                    },
                },
            },
            lualine_x = {
                "encoding",
                "fileformat",
                {
                    "filetype",
                    colored = true,
                    icon_only = true,
                },
            },
        },
    },
}
