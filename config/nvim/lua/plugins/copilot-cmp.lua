local M = {
    'zbirenbaum/copilot-cmp',
}

M.config = function()
    local copilot_cmp = require('copilot_cmp')
    copilot_cmp.setup()
end

return M
