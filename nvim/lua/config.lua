local opt = vim.opt
local g = vim.g

opt.relativenumber = true
opt.nu = true
opt.cursorline = true

-- Табуляция:    
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.smartindent = true

opt.winborder = "rounded"
opt.clipboard = "unnamedplus"
g.mapleader = " "
opt.termguicolors = true
opt.laststatus = 3

-- Поиск:
opt.ignorecase = true          -- игнорировать регистр
opt.smartcase = true           -- если есть заглавные — регистр важен
opt.hlsearch = true            -- подсвечивать результаты поиска
opt.incsearch = true           -- искать по мере ввода
opt.inccommand = "nosplit"     -- показывать замены в реальном времени

-- Поведение
opt.mouse = "a"                -- мышь везде
opt.clipboard = "unnamedplus"  -- системный буфер обмена
opt.autowrite = true           -- автосохранение при переключении буферов
opt.timeoutlen = 300           -- таймаут для комбинаций клавиш (мс)
opt.updatetime = 200           -- частота обновления (для CursorHold)
opt.undofile = true            -- сохранять историю отмены между сессиями
opt.undolevels = 10000         -- глубина истории

-- Сворачивание кода (folding)
opt.foldmethod = "expr"        -- умное сворачивание
opt.foldenable = false         -- не сворачивать всё при старте

-- Скроллинг
opt.scrolloff = 4              -- 4 строки над/под курсором
opt.sidescrolloff = 8          -- 8 колонок слева/справа
opt.smoothscroll = true        -- плавный скроллинг 

-- Разделение окон
opt.splitbelow = true          -- новые окна снизу
opt.splitright = true          -- новые окна справа

-- vim.opt.showtabline = 2           -- всегда показывать bufferline (даже когда 0 буферов)

