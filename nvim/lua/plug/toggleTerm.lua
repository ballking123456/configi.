local toggleterm = require('toggleterm')

vim.opt.timeoutlen = 500          
vim.opt.termguicolors = true     

toggleterm.setup({
    open_mapping = [[<C-j>]],
    size = 7,
    direction = "float",
    insert_mappings = true,
    terminal_mappings = true,
    close_on_exit = true,
    auto_scroll = true,
    float_opts = {
        border = 'solid',
        width = 80,
        height = 20,
        winblend = 0,
    },
})

vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-l>', '<C-w>l')

vim.keymap.set('i', '<A-h>', '<C-o><C-w>h')
vim.keymap.set('i', '<A-j>', '<C-o><C-w>j')
vim.keymap.set('i', '<A-k>', '<C-o><C-w>k')
vim.keymap.set('i', '<A-l>', '<C-o><C-w>l')

vim.keymap.set('t', '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set('t', '<A-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set('t', '<A-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set('t', '<A-l>', '<C-\\><C-n><C-w>l')

