local M = {
    'stevearc/conform.nvim',
}

M.config = function()
    local conform = require('conform')

    conform.setup({
        formatters_by_ft = {
            lua = { 'stylua' },
            cpp = { 'clang_format' },
            python = { 'black' },
        },
    })
end

return M
