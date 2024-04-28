local opts = { noremap = true, silent = true }
local expr_opts = { opts.unpack, expr = true }
local map = vim.api.nvim_set_keymap

-- Custom leader key
vim.g.mapleader = ','

-- Yank all
map('n', '<c-Y>', ':%y+<CR>', opts)

-- Inverse tab
map('i', '<S-Tab>', '<C-d>', opts)

-- Save
map('n', '<c-S>', ':w<CR>', opts)

-- Moves the selected text when in visual mode
map('v', 'K', ":m '<-2<CR>gv=gv", opts)
map('v', 'J', ":m '>+1<CR>gv=gv", opts)

-- Maintain selection on ident
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Open NvimTree
map('n', '<leader>c', ':NvimTreeToggle<CR>', opts)

-- Open Telescope
map('n', '<leader>f', ':Telescope find_files<CR>', opts)
map('n', '<leader>g', ':Telescope live_grep<CR>', opts)
map('n', '<leader>h', ':Telescope grep_string<CR>', opts)

-- Open Spectre
map('n', '<leader>r', "<cmd>lua require('spectre').toggle()<CR>", opts)

-- TermToggle
map('n', '<leader>t', ':ToggleTerm<CR>', opts)
function _G.set_terminal_keymaps()
    map('t', '<esc>', [[<C-\><C-n>]], opts) -- Exit to normal mode
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- Split window
map('n', '<leader>v', ':split<CR>', opts)
map('n', '<leader>b', ':vsplit<CR>', opts)

-- Split window to see definition
map('n', '<leader>Dv', ':split | lua vim.lsp.buf.definition()<CR>', opts)
map('n', '<leader>Db', ':vsplit | lua vim.lsp.buf.definition()<CR>', opts)

-- Dap UI
map('n', '<leader>d', "<cmd>lua require('dapui').toggle()<CR>", opts)

-- Persistence load session
map('n', '<leader>p', "<cmd>lua require('persistence').load()<CR>", opts)

-- Append/insert should match indentation level
local function match_line(action)
    local line = vim.fn.getline('.')
    if #line == 0 or line:match('^%s+$') then
        return 'cc' -- empty line: change line
    else
        return action -- not empty: proceed as normal
    end
end

local function append()
    return match_line('a')
end

local function insert()
    return match_line('i')
end

vim.keymap.set('n', 'i', insert, expr_opts)
vim.keymap.set('n', 'a', append, expr_opts)

-- Show highlight group
vim.api.nvim_set_keymap(
    'n',
    '<F1>',
    ':echo "hi<" . synIDattr(synID(line("."),col("."),1),"name")'
        .. '. \'> trans<\' . synIDattr(synID(line("."),col("."),0),"name")'
        .. '. "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")'
        .. '. ">"<CR>',
    opts
)

-- LSP keymaps
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<leader><leader>', vim.lsp.buf.code_action, opts)
    end,
})

-- Moving between windows
for i = 1, 9 do
    local lhs = '<leader>' .. i
    local rhs = i .. '<c-w>w'
    map('n', lhs, rhs, opts)
end

-- Closing windows
for i = 1, 9 do
    local lhs = '<leader>w' .. i
    local rhs = i .. '<c-w>c'
    map('n', lhs, rhs, opts)
end
