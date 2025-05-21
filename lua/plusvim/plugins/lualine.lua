return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		extensions = {
			"aerial",
			"chadtree",
			"ctrlspace",
			"fern",
			"fugitive",
			"fzf",
			"lazy",
			"man",
			"mason",
			"mundo",
			"neo-tree",
			"nvim-tree",
			"oil",
			"overseer",
			"quickfix",
			"symbols-outline",
			"toggleterm",
			"trouble",
		},
		options = {
			disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
		},
		sections = {
			lualine_c = {
				{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
				"filename",
			},
			lualine_y = {
				{ "progress", separator = " ", padding = { left = 1, right = 0 } },
				{ "location", padding = { left = 0, right = 1 } },
			},
			lualine_z = {
				function()
					return " " .. os.date("%R")
				end,
			},
		},
	},
}
