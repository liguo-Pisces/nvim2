return function(_, opts)
  require("mason-lspconfig").setup {
    ensure_installed = { "gopls" }
  }
end
