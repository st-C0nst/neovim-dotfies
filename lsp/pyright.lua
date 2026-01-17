---@brief
---
--- https://github.com/microsoft/pyright
---
--- `pyright`, a static type checker and language server for python

local function set_python_path(command)
  local path = command.args
  local clients = vim.lsp.get_clients {
    bufnr = vim.api.nvim_get_current_buf(),
    name = 'pyright',
  }
  for _, client in ipairs(clients) do
    if client.settings then
      client.settings.python =
        vim.tbl_deep_extend('force', client.settings.python --[[@as table]], { pythonPath = path })
    else
      client.config.settings = vim.tbl_deep_extend('force', client.config.settings, { python = { pythonPath = path } })
    end
    client:notify('workspace/didChangeConfiguration', { settings = nil })
  end
end

local function find_venv(root)
  local candidates = {
    root .. "/.venv/bin/python",
    root .. "/venv/bin/python",
    root .. "/.virtualenv/bin/python",
  }
  for _, path in ipairs(candidates) do
    if vim.fn.executable(path) == 1 then
      return path
    end
  end
  return nil
end

-- define or override the configuration
return {
  cmd = { "pyright-langserver", "--stdio" }, -- tell pyright to use standard communication
  root_markers = { { 'pyproject.toml', '.venv' }, '.git' }, -- detect project root
  filetypes = { 'python' }, -- start lsp upon opening a python file
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "strict",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = 'openFilesOnly',
      },
    },
  },
  on_attach = function(client, bufnr)

    local root = client.config.root_dir
    local venv_path = find_venv(root)
    if venv_path then
      local python_path = venv_path
      -- set pythonPath for this client
      if client.settings then
        client.settings.python = vim.tbl_deep_extend("force", client.settings.python or {}, { pythonPath = python_path })
      else
        client.config.settings = vim.tbl_deep_extend("force", client.config.settings or {}, { python = { pythonPath = python_path } })
      end
      client:notify("workspace/didChangeConfiguration", { settings = nil })
    end

  end
}

