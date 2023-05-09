return {
  -- File Explorer
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   version = "v2.x",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-tree/nvim-web-devicons",
  --     "MunifTanjim/nui.nvim",
  --   },
  --   config = require "plugins.configs.neo-tree"
  -- },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
        sort_by = "case_sensitive",
        filters = {
          dotfiles = true,
        },
      }
    end,
  },
}
