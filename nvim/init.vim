set ttyfast

set ignorecase
set smartcase
set hlsearch

syntax on
syntax enable
set t_Co=256

set number

set tabstop=2
set softtabstop=2
set shiftwidth=2

call plug#begin("~/.vim/plugged")

Plug 'folke/tokyonight.nvim'


Plug 'ryanoasis/vim-devicons'

let g:WebDevIconsUnicodeDecorateFolderNodes = 1

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='tomorrow'

let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''

let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline_theme='tomorrow'
let g:airline#extensions#tabline#formatter = 'default'

Plug 'xiyaowong/transparent.nvim'
let g:transparent_groups = ['Normal', 'Comment', 'Constant', 'Special', 'Identifier',
\ 'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String',
\ 'Function', 'Conditional', 'Repeat', 'Operator', 'Structure',
\ 'LineNr', 'NonText', 'SignColumn', 'CursorLineNr', 'EndOfBuffer']

Plug 'norcalli/nvim-colorizer.lua'

call plug#end()


