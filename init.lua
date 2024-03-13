require("config.lazy")
require("config.keymaps")
require("config.open-finder")
require("config.reload")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- theme
--vim.cmd("colorscheme papercolor")
vim.cmd("colorscheme kanagawa-wave")

-- relative line numbers
vim.opt.relativenumber = true

