local luasnip = require("luasnip")
local aerial = require("aerial")

return {
  n = {
    -- For US keyboard
    [";"]         = { ":", noremap = true },
    [":"]         = { ";", noremap = true },
    -- yankround
    ["p"]         = { "<Plug>(yankround-p)" },
    ["P"]         = { "<Plug>(yankround-P)" },
    ["gp"]        = { "<Plug>(yankround-gp)" },
    ["gP"]        = { "<Plug>(yankround-gP)" },
    ["<C-p>"]     = { "<Plug>(yankround-prev)" },
    ["<C-n>"]     = { "<Plug>(yankround-next)" },
    ["<leader>a"] = {
      function()
        aerial.toggle({
          focus = true,
          direction = "right",
        })
      end,
      desc = "Toggle Aerial",
    },
    ["<leader>i"] = {
      function()
        aerial.focus()
      end,
      desc = "Focus Aerial",
    }
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
