-- :help option
local options = {
    -- Backups
    backup = false,
    writebackup = false,

    -- Clipboard
    clipboard = "unnamedplus",

    -- Completions
    completeopt = { "menuone", "noselect" },
    pumheight = 5,

    -- Line numbers
    number = true, -- absolute line numbers
    relativenumber = true, -- relative line numbers -- show absolute only on current line

    -- Mouse
    --
    mouse = "a", -- mouse support in all modes

    -- Search
    hlsearch = true, -- highlight matches of last pattern
    ignorecase = true, -- ignore case on search
    smartcase = true, -- use case-sensitive search when string contains uppercase letter

    -- Splits
    splitbelow = true,
    splitright = true,

    -- Tab characters
    expandtab = true, -- convert tab chars to spaces
    tabstop = 4, -- each leading tab renders as 4 char widths of indent (purely visual)
    shiftwidth = 4, -- 1 shift >> indents the selection by 4 char widths

    -- Misc
    cmdheight = 1, -- command-line height
    cursorline = true, -- highlight current line
    fileencoding = "utf-8",
    scrolloff = 8, -- keep n lines above and below the cursor visible
    showtabline = 1, -- show tab line when >1 tab open
    undofile = true, -- persistent undo
    wrap = false, -- wrap lines longer than the window (purely visual)
    termguicolors = true,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- relative line numbers in normal mode, else absolute
-- shout out to Jeff Kreeftmeijer for original vimscript
local augroup = vim.api.nvim_create_augroup("numbertoggle", {})
vim.api.nvim_create_autocmd(
    { "BufEnter", "FocusGained", "InsertLeave", "WinEnter", "CmdlineLeave" },
    {
        group = augroup,
        callback = function()
            if vim.opt.number:get() and vim.api.nvim_get_mode() ~= "i" then
                vim.opt.relativenumber = true
            end
        end,
    }
)

vim.api.nvim_create_autocmd(
    { "BufLeave", "FocusLost", "InsertEnter", "WinLeave", "CmdlineEnter" },
    {
        group = augroup,
        callback = function()
            if vim.opt.number:get() then
                vim.opt.relativenumber = false
                vim.cmd("redraw")
            end
        end,
    }
)
