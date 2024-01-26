return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"andythigpen/nvim-coverage",
		"nvim-neotest/neotest-jest",
		"nvim-neotest/neotest-go",
		"nvim-neotest/neotest-plenary",
	},
	config = function()
		local neotest = require("neotest")

		neotest.setup({
			adapters = {
				require("neotest-plenary").setup({}),
				require("neotest-go"),
				require("neotest-jest")({
					jestCommand = "npm test --",
					env = { CI = true },
					cwd = function(path)
						return vim.fn.getcwd()
					end,
				}),
			},
		})

		require("coverage").setup()

		vim.keymap.set("n", "<localleader>tr", function()
			neotest.run.run()
			neotest.summary.open()
		end)

		vim.keymap.set("n", "<localleader>tt", function()
			neotest.summary.toggle()
		end)
	end,
}
