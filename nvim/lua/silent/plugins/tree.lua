vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "v3.x",
	lazy = false, -- to use it instead of netrw
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{
			"\\",
			function()
				require("neo-tree.command").execute({ toggle = true })
			end,
			desc = "Toggle file explorer",
		},
		{
			"<leader>ge",
			function()
				require("neo-tree.command").execute({ source = "git_status" })
			end,
			desc = "Toggle git status",
		},
	},
	opts = {
		close_if_last_window = true,
		window = {
			position = "float",
		},
		filesystem = {
			follow_current_file = { enabled = true },
			use_libuv_file_watcher = true,
			hijack_netrw_behavior = "open_default",
			group_empty_dirs = true,
			filtered_items = {
				-- "H" to toggle invisibles
				-- visible = true,
				never_show = {
					".git",
					".DS_Store",
					".Trashes",
					".fseventsd",
					".Spotlight-V100",
				},
			},
		},
	},
	deactivate = function()
		vim.cmd([[Neotree close]])
	end,
}
