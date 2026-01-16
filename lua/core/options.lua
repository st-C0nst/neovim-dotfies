-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- New pane direction rules
vim.opt.splitbelow = true
vim.opt.splitright = true

-- No line wrapping
vim.opt.wrap = false

-- Tab rules
vim.opt.expandtab = true -- treat spaces as tabs
vim.opt.tabstop = 2 -- how many spaces are considered a tab
vim.opt.shiftwidth = 2 -- how many spaces to indent by when indenting

-- Sync system clipboard to nvim clipboard
vim.opt.clipboard = "unnamedplus"

-- Keep cursor centered
vim.opt.scrolloff = 999

-- Virtual edit, treat every space (even empty) as a virtual cell
-- Useful for visual block mode
vim.opt.virtualedit = "block"

-- Show preview in a split window
vim.opt.inccommand = "split"

-- Ignore case, useful for autocomplete
vim.opt.ignorecase = true

-- More colors
vim.opt.termguicolors = true
