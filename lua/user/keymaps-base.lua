local opts = { noremap = true, silent = true }
local k = vim.keymap.set

-- Remap leader
k("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Normal mode
-- Buffer navigation
k("n", "<S-l>", ":bnext<CR>", opts)
k("n", "<S-h>", ":bprevious<CR>", opts)

-- Window resizing
k("n", "<C-Up>", ":resize +2<CR>", opts)
k("n", "<C-Down>", ":resize -2<CR>", opts)
k("n", "<C-Left>", ":vertical resize -2<CR>", opts)
k("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Center on scrolling up/down
k("n", "<C-d>", "<C-d>zz", opts)
k("n", "<C-u>", "<C-u>zz", opts)

-- Insert mode
-- Rebind esc in insert mode
k("i", "jj", "<Esc>", opts)

-- Visual mode
-- Sticky indent (reselect the previous visual area after indenting)
k("v", "<", "<gv", opts)
k("v", ">", ">gv", opts)
