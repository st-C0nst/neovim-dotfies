return {
  "ThePrimeagen/harpoon", -- TODO lazy load this for when we run the harpoon commands, set up telescope integration and binds
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim"
  }
}
