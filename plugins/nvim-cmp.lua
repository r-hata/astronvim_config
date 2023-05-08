local cmp = require "cmp"
return {
  "hrsh7th/nvim-cmp",
  opts = {
    mapping = {
      ["<C-j>"] = cmp.config.disable,
      ["<C-k>"] = cmp.config.disable,
    },
  },
}
