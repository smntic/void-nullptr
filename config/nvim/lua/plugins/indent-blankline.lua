local M = {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
}

M.config = function()
    local blankline = require('ibl')
    blankline.setup({
        debounce = 1000,
    })
end

return M
