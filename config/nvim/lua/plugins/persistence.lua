local M = {
    'folke/persistence.nvim',
    event = 'BufReadPre',
}

M.config = function()
    local persistence = require('persistence')
    persistence.setup()
end

return M
