-- Enable 'autoread' to automatically read files when changed on disk
vim.o.autoread = true

-- Trigger 'autoread' when the window gains focus, a buffer is entered, or the cursor is held
vim.api.nvim_create_autocmd({"FocusGained", "BufEnter", "CursorHold", "CursorHoldI"}, {
    pattern = "*",
    callback = function()
        if vim.fn.mode() ~= 'c' then
            vim.cmd('checktime')
        end
    end,
})

-- Notification after file change
vim.api.nvim_create_autocmd("FileChangedShellPost", {
    pattern = "*",
    callback = function()
        vim.api.nvim_echo({{"File changed on disk. Buffer reloaded.", "WarningMsg"}}, true, {})
    end,
})

