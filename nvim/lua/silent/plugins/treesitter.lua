return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = false,
		build = ":TSUpdate",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				auto_install = true,
				indent = { enable = true },
				highlight = { enable = true },
				ensure_installed = {
					"markdown",
					"markdown_inline",
					"regex",
					"json",
					"json5",
				},
			})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		opts = { mode = "cursor", max_lines = 3 },
		config = true,
	},
}
