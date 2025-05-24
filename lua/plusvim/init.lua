local M = {
	"folke/lazy.nvim",
	opts = {
		ui = {
			number = false,
			relativenumber = false,
		},
	},
}

_G.map = vim.api.nvim_set_keymap
_G.opts = { noremap = true, silent = true }

require("plusvim.core")
require("plusvim.plugins")

return M
