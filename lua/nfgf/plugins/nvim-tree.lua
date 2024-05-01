return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- recommended
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup {
      filters = {
        custom = {
          ".OBJ$", ".obj$", ".lst$", ".LST"
        }
      }
    }

    local keymap = vim.keymap
    keymap.set ("n", "<F1>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
  end,
}
