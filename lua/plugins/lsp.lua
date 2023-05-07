return {
  -- LSP
  {
    "neovim/nvim-lspconfig",
    config = require "plugins.configs.lspconfig"
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup {
        sources = {

        },
      }
    end
  },
  -- LSP Installer
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    config = function()
      require("mason").setup {}
    end
  },
  -- Diagnostics
  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("trouble").setup {}
    end
  },
}
