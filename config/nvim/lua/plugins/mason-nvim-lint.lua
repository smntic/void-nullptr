local M = {
    'rshkarin/mason-nvim-lint',
    dependencies = {
        'williamboman/mason.nvim',
        'mfussenegger/nvim-lint',
    },
}

M.config = function()
    local mason_nvim_lint = require('mason-nvim-lint')
    mason_nvim_lint.setup({
        ensure_installed = {
            'pylint',
        },
    })
end

return M
