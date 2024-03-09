vim.g.mapleader = " "

-- nvim-tree
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', {})

-- window management
vim.api.nvim_set_keymap('n', '<M-h>', '<C-w>h', {})
vim.api.nvim_set_keymap('n', '<M-j>', '<C-w>j', {})
vim.api.nvim_set_keymap('n', '<M-k>', '<C-w>k', {})
vim.api.nvim_set_keymap('n', '<M-l>', '<C-w>l', {})

-- telescope keymaps
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<M-,>', '<Cmd>BufferPrevious<CR>', opts)
vim.keymap.set('n', '<M-.>', '<Cmd>BufferNext<CR>', opts)
vim.keymap.set('n', '<M-/>', '<Cmd>BufferClose<CR>', opts)

-- using leaderkey for buffer splits
vim.api.nvim_set_keymap('n', '<leader>vs', ':vsplit<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>hs', ':split<CR>', opts)

-- formatting
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>',
	{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>%!prettier --stdin-filepath %<CR>', { noremap = true, silent = true })

--leave terminal mode
vim.api.nvim_set_keymap('t', '<M-x>', [[<C-\><C-n>]], {noremap = true})

vim.api.nvim_set_keymap('n', '<M-t>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-a>', '<Cmd>ToggleTermToggleAll<CR>', { noremap = true, silent = true })
