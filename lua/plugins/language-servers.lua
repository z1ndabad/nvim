return {
	{ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" },
	"williamboman/mason.nvim", -- package manager for language servers, linters, formatters
	"williamboman/mason-lspconfig.nvim", -- convenience APIs, ensures LSPs installed with mason are set up properly by neovim
	"neovim/nvim-lspconfig", -- neovim-provided config args for launching language servers
}
