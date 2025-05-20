return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>f", group = "Find" },
			{ "<leader>s", group = "Search" },
			{ "<leader>g", group = "Git" },
			{ "<leader>gh", group = "Hunks" },
		})
		wk.setup({
			preset = "modern",
		})
	end,
}
