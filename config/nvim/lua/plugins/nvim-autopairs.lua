local M = {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
}

M.config = function()
    local autopairs = require('nvim-autopairs')
    autopairs.setup()
end

return M
