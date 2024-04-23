-- highlight match braces
return {
	"andymass/vim-matchup",
	lazy = false,
	enabled = true,
	init = function()
		vim.g.matchup_matchparen_offscreen = { method = "popup" }
	end,
}
