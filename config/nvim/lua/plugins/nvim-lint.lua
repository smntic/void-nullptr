local M = {
    'mfussenegger/nvim-lint',
}

M.config = function()
    local lint = require('lint')

    lint.linters_by_ft = {
        python = { 'pylint' },
    }
end

return M
