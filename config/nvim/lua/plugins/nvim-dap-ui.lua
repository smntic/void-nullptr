local M = {
    'rcarriga/nvim-dap-ui',
    dependencies = {
        'mfussenegger/nvim-dap',
        'nvim-neotest/nvim-nio',
    },
}

M.config = function()
    local dap_ui = require('dapui')
    dap_ui.setup()
end

return M
