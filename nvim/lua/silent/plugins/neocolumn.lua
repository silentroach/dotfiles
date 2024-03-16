return {
	"ecthelionvi/NeoColumn.nvim", -- very long comment just to check neocolumn right here
	config = true,
	opts = {
		fg_color = "#b6b7f0", -- default text color
		-- fg_color = "#b2b3ebb", -- default comment text color
		bg_color = "#563e4a",
		-- bg_color = "#3a3f54", -- default current line background
		NeoColumn = "80",
		always_on = true,

		custom_NeoColumn = {
			go = "100",
		},
	},
}
