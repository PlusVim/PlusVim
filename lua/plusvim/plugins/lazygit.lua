return {
	"kdheepak/lazygit.nvim",
	event = "VeryLazy",
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
		{ "<leader>gG", "<cmd>LazyGitCurrentFile<cr>", desc = "Lazygit (current file)" },
		{ "<leader>gf", "<cmd>LazyGitFilter<cr>", desc = "Lazygit (filter)" },
		{ "<leader>gF", "<cmd>LazyGitFilterCurrentFile<cr>", desc = "Lazygit (filter file)" },
	},
}
