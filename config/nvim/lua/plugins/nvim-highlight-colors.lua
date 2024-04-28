local M = {
    'brenoprata10/nvim-highlight-colors',
}

M.config = function()
    local highlight_colors = require('nvim-highlight-colors')
    highlight_colors.setup()
end

return M
