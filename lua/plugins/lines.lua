return {
  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("lualine").setup {
        options = {
          theme = "tokyonight",
        }
      }
    end
  },
  -- {
  --   "rebelot/heirline.nvim",
  --   config = function()
  --     require("heirline").setup {}
  --   end,
  -- },
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
