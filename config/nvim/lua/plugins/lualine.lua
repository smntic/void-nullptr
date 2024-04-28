local M = {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    event = { 'VeryLazy' },
}

local window = function()
    return vim.api.nvim_win_get_number(0)
end

M.config = function()
    local lualine = require('lualine')

    lualine.setup({
        options = {
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
        },
        sections = {
            lualine_a = { window, 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = { { 'filename', symbols = { modified = '[*]' } } },
            lualine_x = { 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' },
        },
        inactive_sections = {
            lualine_a = { window },
            lualine_b = {},
            lualine_c = { { 'filename', symbols = { modified = '[*]' } } },
            lualine_x = { 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' },
        },
    })
end

return M
