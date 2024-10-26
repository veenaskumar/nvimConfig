-- Load Snipe
local snipe = require("snipe")
snipe.setup({
	-- Charaters to use for hints (NOTE: make sure they don't collide with the navigation keymaps)
	ui = {
		max_width = -1,
		position = "topleft",
		open_win_override = { border = "single" },
		max_path_width = 2,
	},
	hints = {
		dictionary = "sadflewcmpghio",
	},
	navigate = {
		next_page = "J",
		prev_page = "K",
		under_cursor = "<CR>",
		cancel_snipe = "q",
		close_buffer = "D",
	},
	sort = "default",
})
vim.keymap.set("n", "<leader>b", snipe.open_buffer_menu)
