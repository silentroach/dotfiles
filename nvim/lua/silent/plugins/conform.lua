return {
	{
		"stevearc/conform.nvim",
		lazy = true,
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				css = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				json5 = { "prettier" },
				fish = { "fish_indent" },
				sh = { "shfmt" },
			},

			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout = 1000,
			},
		},
	},
}
