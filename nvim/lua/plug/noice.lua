vim.opt.cmdheight = 0

vim.notify = require("notify")

require("noice").setup({
    routes = {
        {
            filter = {
                event = "cmdline",
                find = "BufferLineGoToBuffer", 
            },
            opts = { skip = true },  
        },
    },


    presets = {
        bottom_search = true,      -- поиск внизу 
        command_palette = true,    -- командная строка
        long_message_to_split = true,
        lsp_doc_border = true,      -- рамки для LSP документации
    },
    
    cmdline = {
        view = "cmdline_popup",     -- плавающее окно для команд
        opts = {
            border = "rounded", 
        },
        format = {
            cmdline = { pattern = "^:", icon = "  ", lang = "vim", desc = "Vim command" },
        },
    },
    
    messages = {
        view = "notify",            -- все сообщения через notify
    },

    notify = {
        enabled = true,
        view = "notify",  -- использует nvim-notify
    },

    views = {
        -- Настройка плавающего окна для команд
        cmdline_popup = {
            position = {
                row = "30%",   
                col = "50%",  
            },
            size = {
                width = 50,    
                height = "auto",
            },
            border = {
                style = "rounded",
            },
            win_options = {
                winblend = 10,  
            },
        },

        popupmenu = {
            -- ВАЖНО: БЕЗ relative = "editor", чтобы меню шло ЗА командой [citation:10]
            position = {
                row = "50%",   -- будет подстроено под cmdline
                col = "50%",
            },
            size = {
                width = 60,
                height = 10,
            },
            border = {
                style = "rounded",
            },
        },

        mini = {
            position = {
                row = "100%",   -- внизу справа
                col = "100%",
            },
            size = {
                width = 40,
                height = "auto",
            },
            win_options = {
                winblend = 0,
            },
        },
        -- Уведомления (чтобы не перекрывали всё)
        notify = {
            position = {
                row = "100%",    -- сверху
                col = "0%",  -- справа
            },
            size = {
                width = 10,
                height = "auto",
            },
            timeout = 500,    -- 3 секунды и пропадает
        },
    },
})

