return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  opts = {
    ensure_installed = {
      "norg",
      highlight = {
        enable = true,
      },
      "javascript",
      "typescript",
      "json",
      "lua",
      "html",
      "markdown",
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
