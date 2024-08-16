-- Formatting
vim.keymap.set({ "n", "x" }, "<F3>", function()
    require("conform").format({ async = true })
end, { desc = "Format" })

-- Telescope (find files, search words, etc)
vim.keymap.set("n", "<leader>F", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>f", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("v", "<leader>f", "<cmd>Telescope grep_string<cr>")
