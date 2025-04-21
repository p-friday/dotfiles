vim.opt.background = 'dark'
vim.g.colors_name = 'yellope'

package.loaded['lush_theme.yellope'] = nil

require('lush')(require('lush_theme.yellope'))

