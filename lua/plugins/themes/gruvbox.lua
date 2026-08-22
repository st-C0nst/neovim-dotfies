return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,

    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        contrast = "dark",
      })

      vim.o.background = "dark"
    end,
  },
}
