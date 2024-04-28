local M = {
    'mfussenegger/nvim-dap',
}

M.config = function()
    local dap = require('dap')
    dap.adapters.codelldb = {
        type = 'server',
        port = '13000',
        executable = {
            command = 'codelldb',
            args = { '--port', '13000' },
        },
    }

    local get_program = function()
        return vim.fn.input('program: ', vim.loop.cwd() .. '/', 'file')
    end
    local get_args = function()
        return vim.split(vim.fn.input('args: ', '', 'file'), ' ')
    end

    dap.configurations.cpp = {
        {
            type = 'codelldb',
            request = 'launch',
            cwd = '${workspaceFolder}',
            terminal = 'integrated',
            console = 'integratedTerminal',
            stopOnEntry = false,
            program = get_program,
            args = get_args,
        },
    }
end

return M
