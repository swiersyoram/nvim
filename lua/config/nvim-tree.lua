return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {
			git = {
			ignore = false },
			update_focused_file = {
				enable = true,
				update_root = false,
				ignore_list = {},
			},

		}
	end,
}
