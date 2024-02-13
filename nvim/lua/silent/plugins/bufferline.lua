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
	config = function(_, opts)
		require("bufferline").setup({
			options = {
				always_show_bufferline = false,
				show_buffer_close_icons = false,
				show_close_icons = false,
				separator_style = "slope",
			},
			highlights = require("catppuccin.groups.integrations.bufferline").get(),
		})
	end,
}
