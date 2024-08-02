-- :help option
local options = {
	-- Backups
	backup = false,
	writebackup = false,

	-- Clipboard
	clipboard = "unnamedplus",

	-- Line numbers
	number = true,                              -- absolute line numbers
	relativenumber = true,                      -- relative line numbers -- show absolute only on current line

	-- Mouse
	mouse = "a",                                -- mouse support in all modes

	-- Search
	hlsearch = true,                            -- highlight matches of last pattern
	ignorecase = true,                          -- ignore case on search
	smartcase = true,                           -- use case-sensitive search when string contains uppercase letter

	-- Splits
	splitbelow = true,
	splitright = true,

	-- Tab characters
	expandtab = true,                           -- convert tab chars to spaces
	tabstop = 4,                                -- each leading tab renders as 4 char widths of indent (purely visual)
	shiftwidth = 4,                             -- 1 shift >> indents the selection by 4 char widths

	-- Misc
	cmdheight = 1,                              -- command-line height
	cursorline = true,                          -- highlight current line
	fileencoding = "utf-8",
	scrolloff = 8,                              -- keep n lines above and below the cursor visible
	showtabline = 1,                            -- show tab line when >1 tab open
	undofile = true,                            -- persistent undo
	wrap = true,                                -- wrap lines longer than the window (purely visual)
}

for k, v in pairs(options) do
    vim.opt[k] = v
end


-- Keymaps
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Plugins
vim.cmd [[
    call plug#begin()
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'sheerun/vim-polyglot'
    Plug 'windwp/nvim-autopairs'
    Plug 'catppuccin/nvim', {'as': 'catppuccin'}
    Plug 'Mofiqul/vscode.nvim'
    call plug#end()
]]
