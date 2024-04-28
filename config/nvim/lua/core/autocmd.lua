-- Open CHADtree when vim starts in a directory
vim.api.nvim_create_autocmd('VimEnter', {
    pattern = '*',
    callback = function()
        if vim.fn.isdirectory(vim.fn.expand('%')) == 1 then
            vim.cmd('CHADopen')
        end
    end,
})

-- Format on save
vim.g.disable_autoformat = 1
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*',
    callback = function(args)
        if vim.g.disable_autoformat then
            return
        end

        require('conform').format({ bufnr = args.buf })
    end,
})

-- Lint
vim.api.nvim_create_autocmd('BufWritePost', {
    pattern = '*',
    callback = function()
        require('lint').try_lint()
    end,
})
