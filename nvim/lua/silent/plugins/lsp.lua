return {
	"neovim/nvim-lspconfig",
	event = "BufReadPre",
	dependencies = {
		{ "williamboman/mason.nvim", config = true },
		{
			"williamboman/mason-lspconfig.nvim",
			opts = {
				ensure_installed = {
					"lua_ls",
					"tsserver",
				},
				automatic_installation = true,
			},
		},
		{
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			opts = {
				auto_update = true,
				debounce_hours = 24,
				ensure_installed = {
					"prettier",
					"stylua",
					"gopls",
					"shfmt",
				},
			},
		},
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")
		lspconfig.tsserver.setup({
			capabilities = capabilities,
			settings = {
				typescript = {
					inlayHints = {
						includeInlayParameterNameHints = "all",
						includeInlayParameterNameHintsWhenArgumentMatchesName = false,
						includeInlayFunctionParameterTypeHints = true,
						includeInlayVariableTypeHints = true,
						includeInlayVariableTypeHintsWhenTypeMatchesName = false,
						includeInlayPropertyDeclarationTypeHints = true,
						includeInlayFunctionLikeReturnTypeHints = true,
						includeInlayEnumMemberValueHints = true,
					},
				},
				javascript = {
					inlayHints = {
						includeInlayParameterNameHints = "all",
						includeInlayParameterNameHintsWhenArgumentMatchesName = false,
						includeInlayFunctionParameterTypeHints = true,
						includeInlayVariableTypeHints = true,
						includeInlayVariableTypeHintsWhenTypeMatchesName = false,
						includeInlayPropertyDeclarationTypeHints = true,
						includeInlayFunctionLikeReturnTypeHints = true,
						includeInlayEnumMemberValueHints = true,
					},
				},
			},
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

		-- inlay hints
		vim.keymap.set("n", "<leader>H", function()
			vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
		end, {})
	end,
}
