return {
  "ThePrimeagen/harpoon", -- TODO lazy load this for when we run the harpoon commands, set up telescope integration and binds
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim"
  },
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set("n", "<Leader>hg", function() harpoon:list():add() end, { desc = "Add to harpoon list" })
    vim.keymap.set("n", "<Leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    -- First 4 main files
    vim.keymap.set("n", "<Leader>ha", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "<Leader>hs", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "<Leader>hd", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "<Leader>hf", function() harpoon:list():select(4) end)
    -- Next 4 files (if needed)
    vim.keymap.set("n", "<Leader>h1", function() harpoon:list():select(5) end)
    vim.keymap.set("n", "<Leader>h2", function() harpoon:list():select(6) end)
    vim.keymap.set("n", "<Leader>h3", function() harpoon:list():select(7) end)
    vim.keymap.set("n", "<Leader>h4", function() harpoon:list():select(8) end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
  end
}
