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

    require("nvim-tree").setup {}

    local keymap = vim.keymap
    keymap.set ("n", "<leader>a", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
  end,
}
