return {
	{
		"stevearc/conform.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		lazy = true,
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")

			conform.setup({
				formatters_by_ft = {
					javascript = { "prettier" },
					typescript = { "prettier" },
					css = { "prettier" },
					yaml = { "prettier" },
					markdown = { "prettier" },
					lua = { "stylua" },
				},
				format_on_save = {
					lsp_fallback = true,
					async = false,
					timeout = 1000,
				},
			})
		end,
	},
}
