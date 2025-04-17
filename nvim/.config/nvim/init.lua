require("core.settings")
require("core.keymaps")
require("core.quickfix")
require("core.autocommands")
require("core.tags")
require("core.floaterminal")

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.telescope"),
	require("plugins.treesitter"),
	require("plugins.lsp"),
	require("plugins.themes"),
	require("plugins.debug"),
	require("plugins.indent_line"),
	require("plugins.lint"),
	require("plugins.autopairs"),
	require("plugins.neo-tree"),
	require("plugins.gitsigns"), -- adds gitsigns recommend keymaps
	require("plugins.misc"),
	require("plugins.oil"),
	require("plugins.alpha"),
	require("plugins.harpoon"),
	-- require("plugins.health"),
})
