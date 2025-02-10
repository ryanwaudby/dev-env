require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "ts_ls", "eslint" },
  automatic_installation = true,
}
