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

    -- Harpoon operations are frequent enough that I
    -- will dedicate the h namespace to it
    vim.keymap.set("n", "hg", function() harpoon:list():add() end, { desc = "Add to harpoon list" })
    vim.keymap.set("n", "hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    -- First 4 main files
    vim.keymap.set("n", "ha", function() harpoon:list():select(1) end)
    vim.keymap.set("n", "hs", function() harpoon:list():select(2) end)
    vim.keymap.set("n", "hd", function() harpoon:list():select(3) end)
    vim.keymap.set("n", "hf", function() harpoon:list():select(4) end)
    -- Next 4 files (if needed)
    vim.keymap.set("n", "hq", function() harpoon:list():select(5) end)
    vim.keymap.set("n", "hw", function() harpoon:list():select(6) end)
    vim.keymap.set("n", "he", function() harpoon:list():select(7) end)
    vim.keymap.set("n", "hr", function() harpoon:list():select(8) end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
  end
}
