-- Leaders
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Esc insert mode
vim.keymap.set("i", "kj", "<Esc>", { noremap = true, silent = true })

-- Clear highlighting
vim.keymap.set("n", "<Leader><Leader>", "<cmd>nohlsearch<CR>")

-- Better yank (use standard vim grammer)
vim.keymap.set("n", "Y", "y$")

-- Lsp builtins
--
-- These GLOBAL keymaps are created unconditionally when Nvim starts:
-- "gra" (Normal and Visual mode) is mapped to vim.lsp.buf.code_action()
-- "gri" is mapped to vim.lsp.buf.implementation()
-- "grn" is mapped to vim.lsp.buf.rename()
-- "grr" is mapped to vim.lsp.buf.references()
-- "grt" is mapped to vim.lsp.buf.type_definition()
-- "gO" is mapped to vim.lsp.buf.document_symbol()
-- CTRL-S (Insert mode) is mapped to vim.lsp.buf.signature_help(). Press again to enter the popup buffer
-- "an" and "in" (Visual and Operator-pending mode) are mapped to outer and inner incremental selections, respectively, using vim.lsp.buf.selection_range()
-- 'omnifunc' is set to vim.lsp.omnifunc(), use i_CTRL-X_CTRL-O to trigger completion.
-- 'tagfunc' is set to vim.lsp.tagfunc(). This enables features like go-to-definition, :tjump, and keymaps like CTRL-], CTRL-W_], CTRL-W_} to utilize the language server.
-- 'formatexpr' is set to vim.lsp.formatexpr(), so you can format lines via gq if the language server supports it.
-- To opt out of this use gw instead of gq, or clear 'formatexpr' on LspAttach.
-- K is mapped to vim.lsp.buf.hover() unless 'keywordprg' is customized or a custom keymap for K exists.
-- Document colors are enabled for highlighting color references in a document.
-- To opt out call vim.lsp.document_color.enable(false, args.buf) on LspAttach.

-- TODO we should prob have something to fix the v paste yank issue where pasting can override your yank reg

vim.keymap.set('n', '<C-h>', '<C-w>h', {desc = 'Move focus left'})
vim.keymap.set('n', '<C-l>', '<C-w>l', {desc = 'Move focus right'})
vim.keymap.set('n', '<C-j>', '<C-w>j', {desc = 'Move focus down'})
vim.keymap.set('n', '<C-k>', '<C-w>k', {desc = 'Move focus up'})
