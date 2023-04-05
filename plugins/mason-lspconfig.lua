return {
  require("mason-lspconfig").setup {
    automatic_installation = true,
    ensure_installed = {
      "bashls",
      "gopls",
      "jsonls",
      "lua_ls",
      "pyright",
      "vimls",
    },
  },
}
