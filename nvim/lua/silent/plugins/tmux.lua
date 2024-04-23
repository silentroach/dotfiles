-- navigate between tmux and vim panes
return {
	"christoomey/vim-tmux-navigator",
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
		"TmuxNavigatePrevious",
	},
	keys = {
		{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", desc = "Navigate window left" },
		{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>", desc = "Navigate window down" },
		{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>", desc = "Navigate window up" },
		{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>", desc = "Navigate window right" },
		{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", desc = "Navigate previous window" },
	},
}
