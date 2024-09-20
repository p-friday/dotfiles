return {
	{
		"Shatur/neovim-ayu",
		priority = 1000,
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
			local palette = require("nordic.colors")
			local border = {
				bg = palette.black0,
			}
			require("nordic").setup({
				bold_keywords = true,
				italic_comments = false,
				transparent_bg = true,
				swap_backgrounds = true,
				cursorline = {
					theme = "light",
				},
				override = {
					FloatBorder = {
						bg = palette.gray0,
					},
					FloatTitle = {
						bg = palette.gray0,
					},
					TelescopeNormal = border,
					TelescopeResultsBorder = border,
					TelescopePreviewBorder = border,
					LspReferenceText = {
						bg = palette.gray1,
					},
					LspReferenceRead = {
						bg = palette.gray1,
					},
					LspReferenceWrite = {
						bg = palette.gray1,
					},
					CursorLine = {
						bg = "#303030",
					},
					CursorLineNr = {
						fg = palette.yellow.base,
					},
					LineNr = {
						fg = palette.gray5,
					},
					ColorColumn = {
						bg = "#212121",
					},
					StatusLine = {
						fg = palette.white0,
					},
					Pmenu = {
						bg = palette.gray0,
					},
					PmenuSel = {
						bg = palette.gray4,
					},
					NormalFloat = {
						bg = palette.gray0,
					},
				},
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
	{
		"almo7aya/neogruvbox.nvim",
		-- priority = 1000,
		-- decent if i change the bloody pink CursorLine
	},
}
