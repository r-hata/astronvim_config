local luasnip = require("luasnip")

return {
  n = {
    -- For US keyboard
    [";"]     = { ":", noremap = true },
    [":"]     = { ";", noremap = true },
    -- yankround
    ["p"]     = { "<Plug>(yankround-p)" },
    ["P"]     = { "<Plug>(yankround-P)" },
    ["gp"]    = { "<Plug>(yankround-gp)" },
    ["gP"]    = { "<Plug>(yankround-gP)" },
    ["<C-p>"] = { "<Plug>(yankround-prev)" },
    ["<C-n>"] = { "<Plug>(yankround-next)" },
  },
  x = {
    -- yankround
    ["p"]  = { "<Plug>(yankround-p)" },
    ["gp"] = { "<Plug>(yankround-gp)" },
  },
  i = {
    -- LuaSnip jump index
    ["<C-k>"] = {
      function()
        if luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        end
      end,
    }
  }
}
