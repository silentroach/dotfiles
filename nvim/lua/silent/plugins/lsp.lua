return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
			{ "folke/neodev.nvim", opts = {} },
			"mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})
		end,
	},
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup({})

			require("mason-tool-installer").setup({
				ensure_installed = {
					"prettier",
					"stylua",
				},
			})

			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver", "html", "cssls" },
				automatic_installation = true,
			})
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		opts = function(_, opts)
			local nls = require("null-ls")
			opts.sources = opts.sources or {}
			table.insert(opts.sources, nls.builtins.formatting.prettier)
			table.insert(opts.sources, nls.builtins.formatting.stylua)
		end,
	},
}
