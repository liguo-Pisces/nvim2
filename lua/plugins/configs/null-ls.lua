return function()
  local null_ls = require("null-ls")

  null_ls.setup {
    sources = {
      -- Go
      null_ls.builtins.formatting.gofmt,
      null_ls.builtins.formatting.goimports,
    }
  }
end
