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
	local luasnip = require("luasnip")

	cmp.setup({
		-- autocomplete = false disables automatic completion popups
		-- completion = { autocomplete = true },
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},
		mapping = cmp.mapping.preset.insert({
			-- Scroll items and docs
			["<C-j>"] = cmp.mapping.select_next_item(),
			["<C-k>"] = cmp.mapping.select_prev_item(),
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(), -- pull up all completions with C-Space
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = true }),
		}),

		-- First show LSP completions and snippets, then buffer/path
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "nvim_lua" },
			{ name = "luasnip" },
			{ name = "nvim_lsp_signature_help" },
		}, {
			{ name = "buffer" },
			{ name = "path" },
		}),

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

	cmp.visible_docs()
end

return M
