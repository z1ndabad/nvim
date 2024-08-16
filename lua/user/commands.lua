-- If this breaks, try buf_create_user_command
vim.g.nvim_cmp_enabled = true
vim.api.nvim_create_user_command("CompletionToggle", function()
    vim.g.nvim_cmp_enabled = not vim.g.nvim_cmp_enabled
    require("cmp").setup({ enabled = vim.g.nvim_cmp_enabled })
    vim.notify(
        "nvim-cmp " .. (vim.g.nvim_cmp_enabled and "enabled" or "disabled")
    )
end, {})
