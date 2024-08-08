require("user.options")
require("user.keymaps")
require("config.lazy") -- loads everything under ./lua/plugins/ incl. color schemes
require("luasnip.loaders.from_vscode").lazy_load() -- so the snippet engine can read vscode-style extensions
require("user.lsp")
