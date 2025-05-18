return {
	{
		"mfussenegger/nvim-lint",
		event = "BufReadPre",
		config = function()
			require("lint").linters_by_ft = {
				lua = { "luacheck" },
				python = { "pylint" },
				rust = { "clippy" },
				javascript = { "eslint_d" },
				css = { "stylelint" },
				c = { "cppcheck" },
				cpp = { "cppcheck" },
				yaml = { "actionlint" },
				go = { "golangci-lint" },
				markdown = { "markdownlint" },
				json = { "jsonlint" },
				jsonc = { "jsonlint" },
			}
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = {
				-- Linters
				"luacheck",
				"pylint",
				-- "clippy", Install manually the linter
				"eslint_d",
				"stylelint",
				"cpplint",
				"actionlint",
				"golangci-lint",
				"markdownlint",
				"jsonlint",
			},
		},
	},
}
