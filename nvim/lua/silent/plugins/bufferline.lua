return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"catppuccin",
	},
	keys = {
		{ "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
		{ "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
	},
	config = function()
		require("bufferline").setup({
			options = {
				always_show_bufferline = false,
				show_buffer_close_icons = false,
				show_close_icons = false,
				separator_style = "slope",
				offsets = {
					{
						filetype = "neo-tree",
						text = "Finder",
						highlight = "Directory",
						separator = true,
					},
				},
			},
			highlights = require("catppuccin.groups.integrations.bufferline").get(),
		})
	end,
}
