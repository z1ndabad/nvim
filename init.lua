require("user.options")
require("user.keymaps-base")
require("config.lazy") -- loads everything under ./lua/plugins/ incl. color schemes
require("user.lsp")
require("user.keymaps-plugins")
require("user.commands")
Inspect = require("utils.inspect") -- pretty-printing for tables in cmdline, thanks https://github.com/kikito/inspect.lua
