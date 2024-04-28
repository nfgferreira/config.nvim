-- NFGF configurations
vim.g.fileformats = "dos,unix"
vim.g.netrw_liststyle = 3
vim.opt.expandtab=true

-- Fortran: insert lines at the end of the card and continuation
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"*"},
  callback = function()
    vim.schedule(function()
      if vim.bo.filetype ~= "fortran" then 
        vim.opt.colorcolumn = nil
      else
        vim.opt.tabstop = 6
        vim.opt.shiftwidth = 6
        vim.opt.colorcolumn = {6,72}
      end
    end)
  end,
})

vim.filetype.add({
  extension = {
    INC = 'fortran'
  },
--  pattern = {
--    ['.INC'] = 'fortran',
--  },
})

---- *.INC files are Fortran
--vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
--  pattern = {"*.INC"},
--  callback = function()
--    vim.schedule(function()
--      vim.bo.filetype = "fortran"
--    end)
--  end
--})

-- What follows comes from Kickstart

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 4

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search
vim.opt.hlsearch = true

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

