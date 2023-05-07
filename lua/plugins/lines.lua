return {
  -- Statusline
  {
    "rebelot/heirline.nvim",
    config = function()
      require("heirline").setup {}
    end
  },
  -- Tabline
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("bufferline").setup {}
    end
  },
  -- Cursorline
  {
    "RRethy/vim-illuminate",
  },
}
