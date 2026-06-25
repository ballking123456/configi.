require("Comment").setup({
    -- Добавляем пробел между комментарием и кодом
    padding = true,
    -- Курсор остаётся на месте
    sticky = true,
    -- Игнорируем пустые строки
    ignore = "^$",

    toggler = {
        line = "<C-/>",
        -- block = "<leader>//",
    },

    opleader = {
        line = "<C-/>",
        -- block = "<leader>//",
    },

    -- Включаем стандартные маппинги
    mappings = {
        basic = true,    -- gcc, gbc, gc{motion}, gb{motion}
        extra = false,    -- gco, gcO, gcA
    },
})
