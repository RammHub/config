-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "qn", "<cmd>cnext<CR>", { desc = "next quickfix" })
vim.keymap.set("n", "qb", "<cmd>cprev<CR>", { desc = "previous quickfix" })
vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>", { desc = "Open netrw directory viewer" })
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<leader>v", ":vsp<CR>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<leader>b", ":sp<CR>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<leader>w", "<C-w><C-w>", { desc = "Move focus to the next window" })
-- vim.keymap.set("n", "<leader>h", "<C-w><C-h>", { desc = "Move focus to the left window" })
-- vim.keymap.set("n", "<leader>l", "<C-w><C-l>", { desc = "Move focus to the right window" })
-- vim.keymap.set("n", "<leader>j", "<C-w><C-j>", { desc = "Move focus to the lower window" })
-- vim.keymap.set("n", "<leader>k", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<C-j>", "<C-d>", { desc = "Move down" })
vim.keymap.set("n", "<C-k>", "<C-u>", { desc = "Move up" })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>t", "<cmd>Floaterminal<CR>a")
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

-- add and remove indent
vim.keymap.set("n", "<tab>", "<CMD>norm I»      <CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<backspace>", "<CMD>norm 0x<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<C-b>", "<cmd>bprev<CR>")
vim.keymap.set("n", "<C-n>", "<cmd>bnext<CR>")
