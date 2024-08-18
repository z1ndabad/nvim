local k = vim.keymap.set
-- Formatting
k({ "n", "x" }, "<F3>", function()
    require("conform").format({ async = true })
end, { desc = "Format" })
