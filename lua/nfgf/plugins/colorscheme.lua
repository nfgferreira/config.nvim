return {
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      local bg = "#000000"
      local bg_dark = "#111111"
      local bg_highlight = "#0000ff"
      local bg_search = "#0A64AC"
      --local bg_visual = "#275378"
      local bg_visual = "#000080"
      local fg = "#CBE0F0"
      local fg_dark = "#B4D0E9"
      local fg_gutter = "#627E97"
      local border = "#547998"
      local comment = "#FF7D27"
      local cyan = "#AEC4DE"
      local purple = "#ffffff"

      require("tokyonight").setup({
        style = "night",
        on_colors = function(colors)
          colors.bg = bg
          colors.bg_dark = bg_dark
          colors.cyan = cyan
          colors.purple = purple

--          colors.bg_float = bg_dark
----          colors.bg_highlight = bg_highlight
--          colors.bg_popup = bg_dark
--          colors.bg_search = bg_search
--          colors.bg_sidebar = bg_dark
--          colors.bg_statusline = bg_dark
          colors.bg_visual = bg_visual
--          colors.border = border
--          colors.fg = fg
--          colors.fg_dark = fg_dark
--          colors.fg_float = fg
--          colors.fg_gutter = fg_gutter
--          colors.fg_sidebar = fg_dark
          colors.comment = comment
        end,
      })
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
--return { -- You can easily change to a different colorscheme.
--    -- Change the name of the colorscheme plugin below, and then
--    -- change the command in the config to whatever the name of that colorscheme is.
--    --
--    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
--    'folke/tokyonight.nvim',
--    priority = 1000, -- Make sure to load this before all the other start plugins.
--    init = function()
--      -- Load the colorscheme here.
--      -- Like many other themes, this one has different styles, and you could load
--      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
--      vim.cmd.colorscheme 'tokyonight-night'
--
--      -- You can configure highlights by doing something like:
--      vim.cmd.hi 'Comment gui=none'
--    end,
--
--    config = function()
--      require("tokyonight").setup({
--        style = "night",
--
--    -- Change default colors
--        on_colors = function(colors)
--          colors.black="#000000"
--        end,
--      vim.cmd("colorscheme tokyonight")
--      })
--    end,
--  }

--return {
--    "Mofiqul/adwaita.nvim",
--    lazy = false,
--    priority = 1000,
--    config = function()
--        vim.g.adwaita_darker = true
--        vim.cmd('colorscheme adwaita')
--    end
--}
