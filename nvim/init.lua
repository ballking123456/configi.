vim.o.cmdheight = 0

require("config")
require("plug")
require("mapping")

require("plug.comment")
require("plug.treeSitter")
require("plug.luaLine")
require("plug.highlightColors")
require("plug.toggleTerm")
require("plug.neoTree")
require("plug.noice")
require("plug.bufferLine")

require("tokyonight").setup({
  transparent = true, -- Enable this to disable setting the background color
  -- use the night style
  style = "night",
  -- disable italic for functions
  styles = {
    functions = {}
  },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end
})

vim.cmd.colorscheme "tokyonight-night"

