return {
	"akinsho/bufferline.nvim",
	after = "catppuccin",
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"catppuccin",
	},
	keys = {
		{ "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
		{ "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
		{ "<leader>bd", "<cmd>bdelete<cr>", desc = "Delete buffer" },
	},
	config = function(_, opts)
		require("bufferline").setup({
			options = {
				always_show_bufferline = false,
			},
			highlights = require("catppuccin.groups.integrations.bufferline").get(),
		})
	end,
}
