return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<M-k>"] = actions.move_selection_previous, -- move to prev result
						["<M-j>"] = actions.move_selection_next, -- move to next result
						["<M-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
					},
				},
				file_ignore_patterns = {
					"node_modules", "build", "coverage", "public"
				},

			},
			pickers = {
				find_files = {

					hidden = true,
				},
				live_grep = {

					additional_args = function(_)
						return { "--hidden" }
					end
			}}
		})

		telescope.load_extension("fzf")
	end,
}
