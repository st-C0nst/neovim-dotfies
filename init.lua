-- Nvim init

-- Load core components
require("core.mappings")
require("core.options")

-- Load configs
require("config.lazy") -- we must load our plugin manager first

-- Load plugins
