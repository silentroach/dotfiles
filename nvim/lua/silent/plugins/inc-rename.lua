return {
	"smjonas/inc-rename.nvim",
	keys = {
		{
			"<leader>cr",
			function()
				return ":IncRename " .. vim.fn.expand("<cword>")
			end,
			desc = "Incremental rename",
			expr = true,
		},
	},
	config = function()
		require("inc_rename").setup()
	end,
}
