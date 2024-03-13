local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- theming
	--	{'rebelot/kanagawa.nvim'}
	--{'NLKNguyen/papercolor-theme'},
	{ 'rebelot/kanagawa.nvim' },
	require("config.alpha"),

	require("config.nvim-tree"),
	require("config.telescope"),
	require("config.treesitter"),
	require("config.barbar"),
	require("config.lualine"),
	require("config.toggleterm"),
	require("config.nvim-comment"),
	require("config.autopairs"),
	{'JoosepAlviste/nvim-ts-context-commentstring'},
	{'HiPhish/rainbow-delimiters.nvim'},
	{'github/copilot.vim'},

	--lsp
	require("config.lsp-config"),
	require("config.nvim-cmp"),
	require("config.mason"),

})

require('nvim_comment').setup({
	hook = function()
		require('ts_context_commentstring').update_commentstring()
	end,})
