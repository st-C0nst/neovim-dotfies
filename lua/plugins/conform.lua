return {
  "stevearc/conform.nvim",

  event = { "BufWritePre" },

  opts = {
    formatters_by_ft = {
      c = { "clang-format" },
      cpp = { "clang-format" },
      python = {
        "ruff_fix",
        "ruff_format",
      }
    },

    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
    default_format_opts = {
      lsp_format = "fallback",
    },
  },
}
