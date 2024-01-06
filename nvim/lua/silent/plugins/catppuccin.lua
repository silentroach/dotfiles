return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "frappe",
		integrations = {
			mason = true,
			-- neotree = true
			-- neotest = true
			which_key = true,
			treesitter_context = true,
		},
	},
	init = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
