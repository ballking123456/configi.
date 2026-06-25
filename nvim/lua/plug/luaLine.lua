local colors = {
  blue   = '#7aa2f7',
  cyan   = '#7dcfff',
  black  = '#1a1b26',
  white  = '#c0caf5',
  red    = '#f7768e',
  violet = '#bb9af7',
  grey   = '#24283b',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.cyan },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.red } },
  replace = { a = { fg = colors.black, bg = colors.violet } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white },
  },
}

require('lualine').setup {
  options = {
    theme = bubbles_theme,
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 5 } },
    lualine_b = { 'filename', 'branch' },
    lualine_c = {
      '%=', --[[ add your center components here in place of this comment ]]
    },
    lualine_x = {},
    lualine_y = { 'filetype' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 5 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}
