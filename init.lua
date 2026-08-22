-- Nvim init

-- Load core components
require("core.mappings")
require("core.options")

-- Load configs
require("config.lazy") -- we must load our plugin manager first

-- Load theme after theme plugins loaded
require("core.theme").load()

-- Load lsp
vim.lsp.enable({
  "pyright",
  "lua_ls",
  "clangd",
  "cmake"
})
