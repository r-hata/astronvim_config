return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.colorscheme.tokyonight" },
  {
    "tokyonight.nvim",
    opts = {
      styles = {
        comments = { italic = false },
      },
    },
  },
}
