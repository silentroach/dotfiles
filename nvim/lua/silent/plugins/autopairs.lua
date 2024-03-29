return {
	"windwp/nvim-autopairs",
	event = { "InsertEnter" },
	dependencies = {
		"hrsh7th/nvim-cmp",
		"nvim-treesitter/nvim-treesitter",
		"abecodes/tabout.nvim",
	},
	opts = {
		check_ts = true,
		ts_config = {
			lua = { "string" },
			javascript = { "template_string" },
		},
	},
	init = function()
		-- import nvim-autopairs completion functionality
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")

		-- import nvim-cmp plugin (completions plugin)
		local cmp = require("cmp")

		-- make autopairs and completion work together
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

		require("tabout").setup()
	end,
}
