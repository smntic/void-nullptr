vim.api.nvim_create_user_command('FormatDisable', function()
    vim.g.disable_autoformat = 1
    print('Formatting disabled')
end, {})

vim.api.nvim_create_user_command('FormatEnable', function()
    vim.g.disable_autoformat = 0
    print('Formatting enabled')
end, {})

vim.api.nvim_create_user_command('HeaderGuard', function()
    local cursor_pos = vim.api.nvim_win_get_cursor(0)

    local file_name = string.upper(string.gsub(vim.fn.expand('%:t'), '%.', '_'))
    local project_name = string.upper(vim.fn.fnamemodify(vim.fn.getcwd(), ':t'))
    local def = project_name .. '_' .. file_name

    vim.api.nvim_command('normal ggO')
    vim.api.nvim_command('normal i' .. '#ifndef ' .. def)
    vim.api.nvim_command('normal o')
    vim.api.nvim_command('normal i' .. '#define ' .. def)
    vim.api.nvim_command('normal o')
    vim.api.nvim_command('normal Go')
    vim.api.nvim_command('normal i' .. '#endif //' .. def)
    vim.api.nvim_command('normal O')
    vim.api.nvim_command('')

    cursor_pos = {cursor_pos[1] + 3, cursor_pos[2]}
    vim.api.nvim_win_set_cursor(0, cursor_pos)
end, {})
