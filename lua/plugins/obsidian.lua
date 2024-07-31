return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "Master",
        path = "~/vaults/MasterVault",
      },
    },
    follow_url_func = function(url)
      local system = vim.uv.os_uname().sysname

      if system == "Windows_NT" then
        vim.fn.jobstart({ "cmd.exe", "/C", "start", "chrome", url })
      elseif system == "Linux" then
        vim.fn.jobstart({ "google-chrome", url })
      elseif system == "Darwin" then
        vim.fn.jobstart({ "open", "-a", "Google Chrome", url })
      else
        print("Unsupported operating system")
      end
    end,
  },
}
