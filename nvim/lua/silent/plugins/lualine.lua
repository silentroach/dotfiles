return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		icons_enabled = true,
		theme = "catppuccin-frappe",
		extensions = { "neo-tree", "fzf", "lazy", "trouble" },

		-- to disable mode section
		sections = {
			lualine_a = {
				-- short mode representation
				{
					"mode",
					fmt = function(str)
						return str:sub(1, 1)
					end,
				},
			},
		},
	},
}
