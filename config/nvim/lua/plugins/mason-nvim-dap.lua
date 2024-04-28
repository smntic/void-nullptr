local M = {
    'jay-babu/mason-nvim-dap.nvim',
    dependencies = {
        'williamboman/mason.nvim',
        'mfussenegger/nvim-dap',
    },
}

M.config = function()
    local mason_nvim_dep = require('mason-nvim-dap')

    mason_nvim_dep.setup({
        ensure_installed = {
            'codelldb',
        },
    })
end

return M
