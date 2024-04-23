-- hotkey helper UI
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- hotkey: z=
		plugins = { spelling = true },
	},
	config = true,
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 1000
	end,
}
