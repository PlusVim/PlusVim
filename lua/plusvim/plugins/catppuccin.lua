return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			default_integrations = true,
		},
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
