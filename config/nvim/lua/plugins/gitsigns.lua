local M = {
    'lewis6991/gitsigns.nvim',
}

M.config = function()
    local gitsigns = require('gitsigns')
    gitsigns.setup()
end

return M
