return {
	-- Programming
	{
		"sheerun/vim-polyglot",
	},
	{
		"windwp/nvim-autopairs",
		config = true,
		-- additional options
		opts = {
			fast_wrap = {
				map = "<M-e>",
				chars = { "{", "[", "(", '"', "'" },
				pattern = [=[[%'%"%>%]%)%}%,]]=],
				end_key = "$",
				before_key = "h",
				after_key = "l",
				cursor_pos_before = true,
				keys = "qwertyuiopzxcvbnmasdfghjkl",
				manual_position = true,
				highlight = "Search",
				highlight_grey = "Comment",
			},
		},
	},

	-- Misc
	{
		"ThePrimeagen/vim-be-good",
	},
}
