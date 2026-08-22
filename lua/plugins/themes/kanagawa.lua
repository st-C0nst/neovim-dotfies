return {
  "rebelot/kanagawa.nvim",
  opts = {
    theme = "wave",
  },
  priority = 1000,
  lazy = false,
  config = function(_, opts)
    require("kanagawa").setup(opts)      -- automatically uses opts table
    vim.opt.background = "dark"
  end,
}
