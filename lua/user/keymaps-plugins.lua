-- Formatting
vim.keymap.set({ "n", "x" }, "<F3>", function()
    require("conform").format({ async = true })
end, { desc = "Format" })
