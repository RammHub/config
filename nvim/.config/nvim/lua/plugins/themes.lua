return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
			views = {
				mini = {
					win_options = {
						winblend = 0,
					},
				},
			},
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			-- 'rcarriga/nvim-notify',
		},
	},
	{ "xiyaowong/transparent.nvim" },
	{
		"folke/tokyonight.nvim",
		lazy = true,
		priority = 100,
		opts = {},
	},

	{ -- You can easily change to a different colorscheme.
		-- Change the name of the colorscheme plugin below, and then
		-- change the command in the config to whatever the name of that colorscheme is.
		--
		-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
		"ellisonleao/gruvbox.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		event = "VimEnter",
		init = function()
			-- Load the colorscheme here.
			-- Like many other themes, this one has different styles, and you could load
			-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
			vim.cmd.colorscheme("gruvbox")
			vim.o.background = "dark" -- or "light" for light mode
			-- You can configure highlights by doing something like:
			--vim.cmd.hi 'Comment gui=none'
		end,
	},
}
