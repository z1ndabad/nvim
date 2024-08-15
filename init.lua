require("user.options")
require("user.keymaps-base")
require("config.lazy") -- loads everything under ./lua/plugins/ incl. color schemes
require("luasnip.loaders.from_vscode").lazy_load() -- so the snippet engine can read vscode-style extensions
require("user.lsp")
require("user.keymaps-plugins")
require("user.commands")
