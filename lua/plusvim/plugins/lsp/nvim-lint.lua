return {
	{
		"mfussenegger/nvim-lint",
		event = "BufReadPre",
		config = function()
			require("lint").linters_by_ft = {
				lua = { "luacheck" },
				python = { "pylint" },
				javascript = { "eslint_d" },
				css = { "stylelint" },
				c = { "cpplint" },
				cpp = { "cpplint" },
				yaml = { "actionlint" },
				go = { "revive" },
				markdown = { "markdownlint" },
				json = { "jsonlint" },
				jsonc = { "jsonlint" },
			}
		end,
	},
	{
		"rshkarin/mason-nvim-lint",
		event = "VeryLazy",
		opts = {},
	},
}
