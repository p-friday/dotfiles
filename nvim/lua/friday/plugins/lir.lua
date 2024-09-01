return {
	"tamago324/lir.nvim",
	keys = {
		{
			"<leader>pf",
			function()
				require("lir.float").toggle()
			end,
			"n",
		},
	},
	config = function()
		local actions = require("lir.actions")
		-- local mark_actions = require("lir.mark.actions")
		local clipboard_actions = require("lir.clipboard.actions")
		require("lir").setup({
			show_hidden_files = true,
			devicons = {
				enable = true,
				highlight_dirname = true,
			},
			mappings = {
				["<CR>"] = actions.edit,
				["q"] = actions.quit,
				["a"] = actions.mkdir,
				["n"] = actions.newfile,
				["r"] = actions.rename,
				["<C-p>"] = actions.up,
				["h"] = actions.cd,
				["d"] = actions.delete,
				["c"] = clipboard_actions.copy,
				["x"] = clipboard_actions.cut,
				["p"] = clipboard_actions.paste,
			},
		})
	end,
}
