return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      fish = { "fish-indent" },
      sh = { "shfmt" },
      java = { "google-java-format" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      markdown = { "prettier" },
    },
  },
}
