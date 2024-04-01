return {
  -- "nvim-neorg/neorg",
  -- build = ":Neorg sync-parsers",
  -- dependencies = { "nvim-lua/plenary.nvim", "luarocks.nvim" },
  -- config = function()
  --   require("neorg").setup({
  --     load = {
  --       ["core.defaults"] = {},
  --       ["core.concealer"] = {},
  --       ["core.dirman"] = {
  --         config = {
  --           workspaces = {
  --             notes = "~/notes",
  --           },
  --           default_workspace = "notes",
  --         },
  --       },
  --     },
  --   })
  --
  --   vim.wo.foldlevel = 99
  --   vim.wo.conceallevel = 2
  -- end,
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false,
    version = "*",
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
            },
          },
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "D:/org/Master_Notes/",
              },
            },
          },
        },
      })
    end,
  },
}
