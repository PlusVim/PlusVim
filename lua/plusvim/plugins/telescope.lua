return {
	"nvim-telescope/telescope.nvim",
	cmd = { "Telescope" },
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",

		-- extensions
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			config = function()
				require("telescope").setup({
					extensions = {
						fzf = {
							fuzzy = true,
							override_generic_sorter = true,
							override_file_sorter = true,
							case_mode = "smart_case",
						},
					},
				})
				require("telescope").load_extension("fzf")
			end,
		},
		{
			"nvim-telescope/telescope-ui-select.nvim",
			config = function()
				require("telescope").setup({
					extensions = {
						["ui-select"] = {
							require("telescope.themes").get_dropdown(),
						},
					},
				})
				require("telescope").load_extension("ui-select")
			end,
		},
	},
	-- Keybinds are inspired by LazyVimm
	keys = {
		{ "<leader>,", "<cmd>Telescope buffers<CR>", desc = "Switch Buffer" },
		{ "<leader>/", "<cmd>Telescope live_grep<CR>", desc = "Grep (Live)" },
		{ "<leader>:", "<cmd>Telescope command_history<CR>", desc = "Command History" },

		{ "<leader><space>", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
		{ "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Buffers" },
		{ "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
		{ "<leader>fg", "<cmd>Telescope git_files<CR>", desc = "Git Files" },
		{ "<leader>fr", "<cmd>Telescope oldfiles<CR>", desc = "Recent Files" },

		-- Git
		{ "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Git Commits" },
		{ "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Git Status" },

		{ '<leader>s""', "<cmd>Telescope registers<CR>", desc = "Registers" },
		{ "<leader>sa", "<cmd>Telescope autocommands<CR>", desc = "Autocommands" },
		{ "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<CR>", desc = "Fuzzy Find in Buffer" },
		{ "<leader>sc", "<cmd>Telescope command_history<CR>", desc = "Command History" },
		{ "<leader>sC", "<cmd>Telescope commands<CR>", desc = "Commands" },
		{ "<leader>sd", "<cmd>Telescope diagnostics<CR>", desc = "Diagnostics" },
		{ "<leader>sg", "<cmd>Telescope live_grep<CR>", desc = "Grep (Live)" },
		{ "<leader>sh", "<cmd>Telescope help_tags<CR>", desc = "Help Pages" },
		{ "<leader>sH", "<cmd>Telescope highlights<CR>", desc = "Highlight Groups" },
		{ "<leader>sk", "<cmd>Telescope keymaps<CR>", desc = "Keymaps" },
		{ "<leader>sM", "<cmd>Telescope man_pages<CR>", desc = "Man Pages" },
	},
	opts = {},
}
