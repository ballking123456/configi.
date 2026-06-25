-- Themes: 

vim.pack.add({
    { src = "https://github.com/folke/tokyonight.nvim" },
    { src = "https://codeberg.org/evergarden/nvim.git", name = "evergarden" },
})

require("tokyonight").setup({})
require("evergarden").setup({})


vim.pack.add({
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range('3')
  },
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

vim.pack.add({
    {src = "https://github.com/akinsho/toggleterm.nvim"},
})

vim.pack.add({
    {src = "https://github.com/windwp/nvim-autopairs"},
})
require("nvim-autopairs").setup({})

vim.pack.add({
    {src = "https://github.com/numtostr/comment.nvim"},
})
----------------------------------------------------------------
vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter",
})
require('nvim-treesitter').install { 'cpp', 'lua', 'python', 'c' }
require("nvim-treesitter").setup({
    ensure_installed = {
        "lua",
        "cpp",
        "python",
        "c",
    },
    sync_install = true,
    auto_install = true,

    highlight = {
        enable = true,
    },

    indent = {
        enable = true,
    },

    incremental_selection = {
        enable = true,
    },

})


vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim'
})

vim.pack.add({ "https://github.com/brenoprata10/nvim-highlight-colors" })

vim.pack.add({
    'https://github.com/folke/noice.nvim',
    'https://github.com/MunifTanjim/nui.nvim',
    'https://github.com/rcarriga/nvim-notify',
})

vim.pack.add({ "https://github.com/xiyaowong/transparent.nvim" })

vim.pack.add({
    'https://github.com/akinsho/bufferline.nvim'
    -- 'tag = "v3.*"', 
})

