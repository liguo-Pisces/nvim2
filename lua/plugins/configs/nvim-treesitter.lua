return function(_, opts)
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "go" },

    highlight = {
      enable = true,
    },

    indent = {
      enable = true,
    },
  }
end
