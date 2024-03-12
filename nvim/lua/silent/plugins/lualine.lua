return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		icons_enabled = true,
		theme = "catppuccin",
		extensions = { "neo-tree", "fzf", "lazy", "trouble" },
	},
}
