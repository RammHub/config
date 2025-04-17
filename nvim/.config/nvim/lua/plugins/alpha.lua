return {
	"goolord/alpha-nvim",
	-- dependencies = { 'echasnovski/mini.icons' },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local themes = require("alpha.themes.startify")
		-- available: devicons, mini, default is mini
		-- if provider not loaded and enabled is true, it will try to use another provider
		themes.file_icons.provider = "devicons"
		themes.section.header.val = {
			[[██╗██████╗ ███╗   ███╗]],
			[[██║██╔══██╗████╗ ████║]],
			[[██║██████╔╝██╔████╔██║]],
			[[██║██╔══██╗██║╚██╔╝██║]],
			[[██║██████╔╝██║ ╚═╝ ██║]],
			[[╚═╝╚═════╝ ╚═╝     ╚═╝]],
		}
		-- themes.section.buttons.val = {
		-- 	themes.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
		-- 	themes.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
		-- }
		-- -- local handle = io.popen("fortune")
		-- -- local fortune = handle:read("*a")
		-- -- handle:close()
		-- -- themes.section.footer.val = fortune
		--
		-- themes.config.opts.noautocmd = true
		--
		-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
		require("alpha").setup(themes.config)
	end,
}
