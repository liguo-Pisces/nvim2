return function(_, opts)
  require("neo-tree").setup {
    window = {
      mappings = {
        ["o"] = "open",
      },
    }
  }
end
