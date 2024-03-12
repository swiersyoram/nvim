function OpenInFinder()
    local file = vim.fn.expand('%:p') -- Gets the full path of the current file
    if file == "" or vim.fn.isdirectory(file) == 1 then
        file = vim.fn.expand('%:p:h') -- If no file is selected or it's a directory, use the directory path
    end
    vim.cmd('!open -R ' .. file)
end

vim.api.nvim_set_keymap('n', '<leader>of', ':lua OpenInFinder()<CR>', {noremap = true, silent = true})

