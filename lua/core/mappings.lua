-- Leaders
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Esc insert mode
vim.keymap.set("i", "kj", "<Esc>", { noremap = true, silent = true })

-- Clear highlighting
vim.keymap.set("n", "<Leader><Leader>", "<cmd>nohlsearch<CR>")

-- Better yank (use standard vim grammer)
vim.keymap.set("n", "Y", "y$")

-- Nvim-treesitter keymaps
vim.keymap.set({ "x", "o" }, "af", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@function.outer", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "if", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@function.inner", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "ac", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@class.outer", "textobjects")
end)
vim.keymap.set({ "x", "o" }, "ic", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@class.inner", "textobjects")
end)
-- You can also use captures from other query groups like `locals.scm`
vim.keymap.set({ "x", "o" }, "as", function()
  require "nvim-treesitter-textobjects.select".select_textobject("@local.scope", "locals")
end)

