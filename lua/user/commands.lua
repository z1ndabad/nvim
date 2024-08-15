-- If this breaks, try buf_create_user_command
--[[
vim.api.nvim_create_user_command("AutocompleteOn", function()
	require("cmp").setup({ completion = { autocomplete = true } })
end, {})

vim.api.nvim_create_user_command("AutocompleteOff", function()
	require("cmp").setup({ completion = { autocomplete = false } })
end, {})
--]]
