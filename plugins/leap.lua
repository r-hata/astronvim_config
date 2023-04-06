return {
  "ggandor/leap.nvim",
  dependencies = { "tpope/vim-repeat" },
  event = "BufEnter",
  config = function()
    require("leap").add_default_mappings()
  end,
}
