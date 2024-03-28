return {
	{
		"neovim/nvim-lspconfig",
		event = "BufReadPre",
		dependencies = {
			{ "williamboman/mason.nvim", config = true },
			{
				"williamboman/mason-lspconfig.nvim",
				opts = {
					ensure_installed = { "lua_ls", "tsserver" },
					automatic_installation = true,
				},
			},
			{
				"WhoIsSethDaniel/mason-tool-installer.nvim",
				opts = {
					ensure_installed = {
						"prettier",
						"stylua",
						"gopls",
						"shfmt",
					},
				},
			},
			{
				"smjonas/inc-rename.nvim",
				keys = {
					{ "<leader>cr", ":IncRename ", desc = "Incremental rename" },
				},
				config = function()
					require("inc_rename").setup()
				end,
			},
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.tsserver.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			-- using telescope for references
			-- vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		event = "BufReadPre",
		dependencies = { "mason.nvim" },
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
					null_ls.builtins.formatting.shfmt,
					null_ls.builtins.formatting.fish_indent,
					null_ls.builtins.diagnostics.fish,
				},
			})
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		end,
	},
}
