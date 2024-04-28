local M = {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
}

M.config = function()
    local nvim_tree = require('nvim-tree')
    nvim_tree.setup({
        sort = {
            sorter = 'case_sensitive',
        },
        view = {
            width = 30,
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },
    })
end

return M
