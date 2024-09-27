return {
	{
		"xiantang/darcula-dark.nvim",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("darcula-dark")
			vim.cmd.hi("Normal guibg=none")
		end,
	},
	{
		"Shatur/neovim-ayu",
		-- priority = 1000,
		init = function()
			vim.cmd.colorscheme("ayu")
		end,
		config = function()
			require("ayu").setup({
				overrides = {
					Normal = { bg = "None" },
					SignColumn = { bg = "None" },
					ColorColumn = { bg = "#2a2725" },
					Folded = { bg = "None" },
					FoldColumn = { bg = "None" },
					CursorColumn = { bg = "None" },
					CursorLine = { bg = "#2a2725" },
					VertSplit = { bg = "None" },
					LineNr = { fg = "#5c5747" },
					CursorLineNr = { fg = "#c1bcae" },
					StatusLine = { bg = "#0e0e0b" },
					TelescopeNormal = { bg = "#0e0e0b" },
					NormalFloat = { bg = "#0e0e0b" },
					Pmenu = { bg = "#0e0e0b" },
					PmenuSel = { bg = "#2f230a" },
				},
			})
		end,
	},
	{
		"AlexvZyl/nordic.nvim",
		-- priority = 1000,
		init = function()
			-- vim.cmd.colorscheme("nordic")
			vim.cmd.hi("@parameter gui=none")
			vim.cmd.hi("clear @spell")
		end,
		config = function()
			require("nordic").setup({
				bold_keywords = true,
				italic_comments = false,
				transparent = true,
				swap_backgrounds = true,
				cursorline = {
					theme = "light",
				},
				on_highlight = function(highlights, palette)
					highlights.FloatBorder = {
						bg = palette.gray0,
					}
					highlights.FloatTitle = {
						bg = palette.gray0,
					}
					highlights.TelescopeNormal = {
						bg = palette.black0,
					}
					highlights.TelescopeResultsBorder = {
						bg = palette.black0,
					}
					highlights.TelescopePreviewBorder = {
						bg = palette.black0,
					}
					highlights.LspReferenceText = {
						bg = palette.gray1,
					}
					highlights.LspReferenceRead = {
						bg = palette.gray1,
					}
					highlights.LspReferenceWrite = {
						bg = palette.gray1,
					}
					highlights.CursorLine = {
						bg = "#303030",
					}
					highlights.CursorLineNr = {
						fg = palette.yellow.base,
					}
					highlights.LineNr = {
						fg = palette.gray5,
					}
					highlights.ColorColumn = {
						bg = "#212121",
					}
					highlights.StatusLine = {
						fg = palette.white0,
					}
					highlights.Pmenu = {
						bg = palette.gray0,
					}
					highlights.PmenuSel = {
						bg = palette.gray4,
					}
					highlights.NormalFloat = {
						bg = palette.gray0,
					}
				end,
			})
		end,
	},
	{
		"savq/melange-nvim",
		-- decent if i can turn off italics
		-- remove background but keep on telescope
	},
	{
		"rebelot/kanagawa.nvim",
		-- priority = 1000,
		init = function()
			-- vim.cmd.colorscheme("kanagawa-dragon")
		end,
		opts = {
			commentStyle = { italic = false },
			keywordStyle = { italic = false, bold = true },
			statementStyle = { bold = false },
			transparent = true,
			colors = {
				theme = { all = { ui = { bg_gutter = "none" } } },
			},
		},
	},
	{
		"ramojus/mellifluous.nvim",
		-- priority = 1000,
		init = function()
			-- vim.cmd.colorscheme("mellifluous")
		end,
		opts = {},
		config = function()
			require("mellifluous").setup({
				-- color_set = "mountain",
				styles = {
					comments = { italic = false },
					keywords = { bold = true },
				},
				transparent_background = {
					enabled = true,
					telescope = false,
					cursor_line = false,
					status_line = false,
				},
			})
		end,
	},
}
