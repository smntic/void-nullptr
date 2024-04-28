local M = {
    'numToStr/Comment.nvim',
    lazy = false,
}

M.config = function()
    local comment = require('Comment')

    comment.setup({
        ignore = '^$',
        toggler = {
            line = '<c-/>',
        },
        opleader = {
            line = '<c-/>',
        },
    })
end

return M
