local M = {
    'zapling/mason-conform.nvim',
    dependencies = {
        'williamboman/mason.nvim',
        'stevearc/conform.nvim',
    },
}

M.config = function()
    local mason_conform = require('mason-conform')
    mason_conform.setup()
end

return M
