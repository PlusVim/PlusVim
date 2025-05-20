return {
	{
		"saghen/blink.cmp",
		event = "VeryLazy",

		version = "1.*",

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			keymap = { preset = "default" },

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = {
				accept = { auto_brackets = { enabled = true } },

				documentation = {
					auto_show = true,
					auto_show_delay_ms = 250,
					treesitter_highlighting = true,
					window = { border = "rounded" },
				},
			},

			snippets = { preset = "luasnip" },

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},

			fuzzy = { implementation = "prefer_rust_with_warning" },

			signature = { enabled = true },

			cmdline = { enabled = false },
		},
		opts_extend = { "sources.default" },
	},
	{
		"L3MON4D3/LuaSnip",
		event = "VeryLazy",
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"mason-org/mason.nvim",
		},
		opts = {
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup(vim.tbl_deep_extend("force", {
						capabilities = require("blink.cmp").get_lsp_capabilities,
					}, custom_opts[server_name] or {}))
				end,
			},
		},
	},
}
