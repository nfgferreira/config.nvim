return {
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      local bg = "#000000"
      local bg_dark = "#111111"
      local bg_visual = "#000080"
      local comment = "#FF7D27"

      require("tokyonight").setup({
        style = "night",

--      See https://github.com/folke/tokyonight.nvim/blob/main/extras/lua/tokyonight_night.lua
--      for colors
        on_colors = function(colors)
          colors.bg = bg
          colors.bg_dark = bg_dark
          colors.bg_sidebar = bg_dark
          colors.bg_visual = bg_visual
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

