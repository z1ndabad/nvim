local k = vim.keymap.set
-- Formatting
k({ "n", "x" }, "<leader>r", function()
    require("conform").format({ async = true })
end, { desc = "Format" })
