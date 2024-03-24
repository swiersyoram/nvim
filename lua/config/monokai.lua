return  {
	"loctvl842/monokai-pro.nvim",
	config = function()
		require("monokai-pro").setup({
			background_clear = { "float_win" }, 
			  filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum

		})
	end
}
