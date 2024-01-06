return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
	},
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "File live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
		vim.keymap.set("n", "<leader>?", builtin.oldfiles, { desc = "Find recently opened files" })
		vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions, { desc = "Goto Definition" })
		vim.keymap.set("n", "<leader>gr", builtin.lsp_references, { desc = "Goto Reference" })

		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				file_ignore_patterns = {
					"node_modules",
				},
			},
		})

		telescope.load_extension("fzf")
	end,
}
