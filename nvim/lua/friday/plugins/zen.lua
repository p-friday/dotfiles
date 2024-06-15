return {
	"folke/zen-mode.nvim",
	opts = {},
	config = function()
		vim.keymap.set("n", "<leader>z", function()
			require("zen-mode").toggle({
				window = {
					backdrop = 0.6,
					width = 0.6,
					options = {},
				},
				plugins = {
					options = {
						laststatus = 3,
					},
				},
			})
		end, { desc = "[Z]en mode" })
	end,
}
