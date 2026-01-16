return {
  "rebelot/kanagawa.nvim",
  opts = {
    theme = "wave",
  },
  config = function(_, opts)
    require("kanagawa").setup(opts)      -- automatically uses opts table
    vim.opt.background = "dark"
    vim.cmd([[colorscheme kanagawa]])
  end,
}
