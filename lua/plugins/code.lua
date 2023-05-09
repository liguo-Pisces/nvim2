return {
  -- Syntax
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = require "plugins.configs.nvim-treesitter"
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
