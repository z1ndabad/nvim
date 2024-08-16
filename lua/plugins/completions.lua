local M = {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp", -- advertises nvim-cmp completion capabilities to language servers
        "hrsh7th/cmp-nvim-lua", -- completions for neovim Lua APIs
        "hrsh7th/cmp-buffer", -- completion source for buffer wordlist (nvim default completions)
        "hrsh7th/cmp-path", -- completion source for filesystem paths
        "hrsh7th/cmp-cmdline", -- completion source for command line
        "hrsh7th/cmp-nvim-lsp-signature-help",
        "L3MON4D3/LuaSnip", -- Snippet engine
        "saadparwaiz1/cmp_luasnip", -- Luasnip completion source
        "rafamadriz/friendly-snippets",
    },
}
M.config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    local luasnip = require("luasnip")

    cmp.setup({
        -- autocomplete = false disables automatic completion popups
        -- completion = { autocomplete = false },
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        mapping = cmp.mapping.preset.insert({
            -- Scroll items and docs
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
            ["<C-k>"] = cmp.mapping.scroll_docs(-4),
            ["<C-j>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(), -- pull up all completions with C-Space
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
            ["<C-g>"] = function()
                if cmp.visible_docs() then
                    cmp.close_docs()
                else
                    cmp.open_docs()
                end
            end,
        }),
        -- First show LSP completions and snippets, then buffer/path
        sources = cmp.config.sources({
            { name = "nvim_lsp" },
            -- { name = "nvim_lua" },
            { name = "luasnip" },
            { name = "nvim_lsp_signature_help" }, -- fn arg hints in insert mode, will not impact menus
        }, {
            { name = "buffer" },
            { name = "path" },
        }),

        -- Formatting for completion popups
        formatting = {
            format = lspkind.cmp_format({
                mode = "symbol_text",
                menu = {
                    buffer = "[Buffer]",
                    nvim_lsp = "[LSP]",
                    luasnip = "[Snippet]",
                    nvim_lua = "[Lua]",
                },
            }),
        },

        view = {
            docs = {
                auto_open = false,
            },
        },

        experimental = {
            ghost_text = false,
        },
    })

    -- For searches, use the buffer wordlist for completions
    cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = "buffer" },
        },
    })

    -- For commands, use filepath and cmdline completions
    cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = "path" },
        }, {
            { name = "cmdline" },
        }),
    })
end

return M
