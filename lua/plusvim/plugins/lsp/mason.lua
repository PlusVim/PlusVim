return {
	{
		"mason-org/mason.nvim",
		event = "VeryLazy",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		event = "VeryLazy",
		opts = {
			ensure_installed = {
				"lua_ls",
				"pyright",
				"rust_analyzer",
				"ts_ls",
				"html",
				"cssls",
				"clangd",
				"yamlls",
				"gopls",
				"jsonls",
			},
			automatic_installation = true,
		},
	},
}
