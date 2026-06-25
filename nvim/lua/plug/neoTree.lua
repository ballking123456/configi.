require('transparent').clear_prefix('Neotree')

require("neo-tree").setup({
    close_if_last_window = true,

    popup_border_style = "rounded",
    -- Включаем Git статус (показывает изменения в файлах)
    enable_git_status = true,
    -- Включаем диагностику LSP (ошибки прямо в дереве)
    enable_diagnostics = true,

    window = {
        position = "float",
        width = 30,
        height = 45,
        border = "rounded",
    },

    default_component_configs = {

        indent = {
            indent_size = 1,
            padding = 3,
        },
        -- Настройка иконок: 
        icon = {
            folder_closed = " ",             -- закрытая папка
            folder_open = "󰝰 ",               -- открытая папка
            folder_empty = " ",              -- пустая папка
            default = " ",                   -- файл по умолчанию
        },

        -- Настройка отображения имени:
        name = {
            trailing_slash = true,
            use_git_status_colors = true,    -- цвет по Git статусу
            highlight = "NeoTreeFileName",
        },

        -- Git статус символы:
        git_status = {
            symbols = {
                added     = " ",             -- добавлен
                modified  = "󱆮 ",             -- изменен
                deleted   = " ",             -- удален
                renamed   = "󰛿 ",             -- переименован
                untracked = " ",             -- неотслеживаемый
                ignored   = "󰅙 ",             -- игнорируемый
                unstaged  = "󰠠 ",             -- не в staged
                staged    = " ",             -- в staged
                conflict  = " ",             -- конфликт
            },
        },
    },

    filesystem = {

        filtered_items = {
            show_hidden = true,
            hide_gitignored = true,
        },

        follow_current_file = {
            enabled = true,                   -- следить за текущим файлом
            leave_dirs_open = false,          -- не открывать папки автоматически
        },

        group_empty_directories = true,
    }
})

vim.keymap.set('n', '<C-b>', function()
    require('neo-tree.command').execute({
        source = "filesystem",
        position = "float",
        toggle = true,
        reveal = true,
    })
end, { desc = "Открыть neo-tree" })

vim.keymap.set('n', '<C-e>', function()
    require('neo-tree.command').execute({
        source = "filesystem",
        position = "left",
        toggle = true,
        reveal = true,
    })
end, { desc = "Открыть neo-tree" })

