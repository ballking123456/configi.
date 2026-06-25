require("bufferline").setup({
    options = {
        mode = "buffers",           -- показываем буферы, а не вкладки
        numbers = "none",        

        diagnostics = "nvim_lsp",   

        sort_by = "insert_at_end",
        
        -- Автоматически показывать буферы, даже если невидимы
        always_show_bufferline = true,

        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,

        -- Символы для разных состояний
        indicator = {
            icon = ' ',              -- индикатор активного буфера
            style = 'none',           -- варианты: "icon", "underline", "none"
        },

        separator_style = "none",  -- варианты: "slant", "thick", "thin", "none"

    },
})

vim.keymap.set('n', '<A-w>', ':bdelete %<CR>', { desc = "Закрыть текущий буфер" })

vim.keymap.set('n', '<A-1>', ':BufferLineGoToBuffer 1<CR>', { desc = "Буфер 1 (Alt)" })
vim.keymap.set('n', '<A-2>', ':BufferLineGoToBuffer 2<CR>', { desc = "Буфер 2 (Alt)" })
vim.keymap.set('n', '<A-3>', ':BufferLineGoToBuffer 3<CR>', { desc = "Буфер 3 (Alt)" })
vim.keymap.set('n', '<A-4>', ':BufferLineGoToBuffer 4<CR>', { desc = "Буфер 4 (Alt)" })
vim.keymap.set('n', '<A-5>', ':BufferLineGoToBuffer 5<CR>', { desc = "Буфер 5 (Alt)" })
vim.keymap.set('n', '<A-6>', ':BufferLineGoToBuffer 6<CR>', { desc = "Буфер 6 (Alt)" })
vim.keymap.set('n', '<A-7>', ':BufferLineGoToBuffer 7<CR>', { desc = "Буфер 7 (Alt)" })
vim.keymap.set('n', '<A-8>', ':BufferLineGoToBuffer 8<CR>', { desc = "Буфер 8 (Alt)" })
vim.keymap.set('n', '<A-9>', ':BufferLineGoToBuffer 9<CR>', { desc = "Буфер 9 (Alt)" })

require('transparent').clear_prefix('BufferLine')
