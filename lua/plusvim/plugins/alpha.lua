return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"██████╗ ██╗     ██╗   ██╗███████╗██╗   ██╗██╗███╗   ███╗",
			"██╔══██╗██║     ██║   ██║██╔════╝██║   ██║██║████╗ ████║",
			"██████╔╝██║     ██║   ██║███████╗██║   ██║██║██╔████╔██║",
			"██╔═══╝ ██║     ██║   ██║╚════██║╚██╗ ██╔╝██║██║╚██╔╝██║",
			"██║     ███████╗╚██████╔╝███████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
			"╚═╝     ╚══════╝ ╚═════╝ ╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "  Find file", "<cmd>Telescope find_files<CR>"),
			dashboard.button("e", "  New file", "<cmd>ene <BAR> startinsert <CR>"),
			dashboard.button("r", "  Recent files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("g", "  Find text", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("l", "󰒲  Lazy.nvim", "<cmd>Lazy<CR>"),
			dashboard.button("u", "  Update plugins", "<cmd>Lazy update<CR>"),
			dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
		}

		dashboard.opts.layout[1].val = math.max(2, math.floor(vim.fn.winheight(0) * 0.2))

		alpha.setup(dashboard.opts)

		-- Is from LazyVim
		vim.api.nvim_create_autocmd("User", {
			once = true,
			pattern = "LazyVimStarted",
			callback = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				dashboard.section.footer.val = "⚡ Neovim loaded "
					.. stats.loaded
					.. "/"
					.. stats.count
					.. " plugins in "
					.. ms
					.. "ms"
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
	end,
}
