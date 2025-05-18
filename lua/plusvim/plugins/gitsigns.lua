return {
	-- Inspired by LazyVim's gitsigns configuration
	"lewis6991/gitsigns.nvim",
	event = "VeryLazy",
	keys = {
		{
			"]h",
			function()
				if vim.wo.diff then
					vim.cmd.normal({ "]c", bang = true })
				else
					require("gitsigns").nav_hunk("next")
				end
			end,
			desc = "Next Hunk",
		},
		{
			"[h",
			function()
				if vim.wo.diff then
					vim.cmd.normal({ "[c", bang = true })
				else
					require("gitsigns").nav_hunk("prev")
				end
			end,
			desc = "Prev Hunk",
		},
		{
			"]H",
			function()
				require("gitsigns").nav_hunk("last")
			end,
			desc = "Last Hunk",
		},
		{
			"[H",
			function()
				require("gitsigns").nav_hunk("first")
			end,
			desc = "First Hunk",
		},

		{ mode = { "n", "v" }, "<leader>ghs", "<cmd>Gitsigns stage_hunk<CR>", desc = "Stage Hunk" },
		{ mode = { "n", "v" }, "<leader>ghr", "<cmd>Gitsigns reset_hunk<CR>", desc = "Reset Hunk" },

		{ "<leader>ghS", "<cmd>Gitsigns stage_buffer<CR>", desc = "Stage Buffer" },
		{ "<leader>ghu", "<cmd>Gitsigns undo_stage_hunk<CR>", desc = "Undo Stage Hunk" },
		{ "<leader>ghR", "<cmd>Gitsigns reset_buffer<CR>", desc = "Reset Buffer" },
		{ "<leader>ghp", "<cmd>Gitsigns preview_hunk_inline<CR>", desc = "Preview Hunk Inline" },
		{ "<leader>ghb", "<cmd>Gitsigns blame_line<CR>", desc = "Blame Line" },
		{ "<leader>ghB", "<cmd>Gitsigns blame<CR>", desc = "Blame Buffer" },
		{ "<leader>ghd", "<cmd>Gitsigns diffthis<CR>", desc = "Diff This" },
		{ "<leader>ghD", "<cmd>Gitsigns diffthis ~<CR>", desc = "Diff This ~" },

		{ mode = { "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", desc = "GitSigns Select Hunk" },
	},

	opts = {
		signs = {
			add = { text = "▎" },
			change = { text = "▎" },
			delete = { text = "" },
			topdelete = { text = "" },
			changedelete = { text = "▎" },
			untracked = { text = "▎" },
		},
		signs_staged = {
			add = { text = "▎" },
			change = { text = "▎" },
			delete = { text = "" },
			topdelete = { text = "" },
			changedelete = { text = "▎" },
		},
	},
}
