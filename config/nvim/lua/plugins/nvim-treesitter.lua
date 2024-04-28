local M = {
    'nvim-treesitter/nvim-treesitter',
    cmd = 'TSUpdate',
}

M.config = function()
    local configs = require('nvim-treesitter.configs')

    configs.setup({
        ensure_installed = { 'c', 'cpp', 'python', 'lua', 'vim', 'vimdoc' },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
    })
end

return M
