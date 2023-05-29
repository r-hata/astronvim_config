return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  {
    "tokyonight.nvim",
    opts = {
      styles = {
        comments = { italic = false },
      },
    },
  },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
}
