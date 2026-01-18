return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',

    -- optional but recommended
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { 'nvim-tree/nvim-web-devicons' }
  },
  cmd = "Telescope",
  opts = {
    defaults = {
      sorting_strategy = "ascending",
      file_ignore_patterns = {
        "node_modules",
        "dist",
        "build",
        "%.pyc",
        "%.o",
        "%.class",
        "venv",
        "__pycache__",
        "%.swp",
      },
    },
  },
  config = function(_, opts)
    require('telescope').setup(opts)
    local builtin = require('telescope.builtin')
    -- Base mappings
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>fm', builtin.marks, { desc = 'Telescope marks' })


    -- Lsp mappings
    vim.keymap.set('n', '<leader>gd', builtin.lsp_definitions, { desc = 'Telescope lsp_defintions tags' })
    vim.keymap.set('n', '<leader>gr', builtin.lsp_references, { desc = 'Telescope lsp references tags' })
  end
}
