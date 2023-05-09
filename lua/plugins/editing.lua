return {
  -- Pairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  },
  -- Comment
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup {}
    end
  },
}
