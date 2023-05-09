return {
  -- Colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    config = function()
      require("tokyonight").setup {
        style = "storm",
      }

      vim.cmd[[colorscheme tokyonight]]
    end
  },
  -- Indent
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup {}
    end
  },
}
