return {
	"mbbill/undotree",
	keys = {
		{ "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Undotree Toggle" },
	},
	config = function()
		vim.g.undotree_HighlightChangedWithSign = 0
		vim.g.undotree_SetFocusWhenToggle = 1
		vim.g.undotree_ShortIndicators = 1
		vim.g.undotree_HelpLine = 0

		vim.g.undotree_WindowLayout = 2
		vim.g.undotree_DiffpanelHeight = 7
	end,
}
