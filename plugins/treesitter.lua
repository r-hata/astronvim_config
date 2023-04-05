return {
  require("nvim-treesitter.configs").setup {
    auto_install = true,
    ensure_installed = {
      "bash",
      "c",
      "go",
      "json",
      "lua",
      "markdown",
      "python",
      "rust",
      "vim",
      "yaml",
    },
  },
}
