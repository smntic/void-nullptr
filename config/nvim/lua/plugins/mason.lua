local M = {
    'williamboman/mason.nvim',
}

M.config = function()
    local mason = require('mason')

    mason.setup({
        ensure_installed = {
            'clang-format',
            'black',
        },
    })
end

return M
