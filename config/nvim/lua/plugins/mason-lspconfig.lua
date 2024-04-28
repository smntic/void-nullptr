local M = {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
        'williamboman/mason.nvim',
        'neovim/nvim-lspconfig',
    },
}

M.config = function()
    local mason_lspconfig = require('mason-lspconfig')

    mason_lspconfig.setup({
        ensure_installed = {
            'clangd',
            'lua_ls',
            'pylsp',
        },
    })

    mason_lspconfig.setup_handlers({
        function(server_name) -- default handler (optional)
            require('lspconfig')[server_name].setup({})
        end,
    })
end

return M
