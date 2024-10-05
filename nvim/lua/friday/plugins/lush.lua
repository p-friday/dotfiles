return {
	"rktjmp/lush.nvim",
	{
		dir = "~/dotfiles/yellope",
		lazy = false,
		priority = 1000,
		init = function()
			vim.cmd.colorscheme("yellope")
		end,
	},
}
