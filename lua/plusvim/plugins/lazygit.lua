return {
	---@param opts? snacks.lazygit.Config
	"folke/snacks.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>gg",
			function()
				Snacks.lazygit.open()
			end,
		},
		{
			"<leader>gl",
			function()
				Snacks.lazygit.log()
			end,
		},
		{
			"<leader>gf",
			function()
				Snacks.lazygit.log_file()
			end,
		},
	},
	opts = {
		lazygit = {},
	},
}
