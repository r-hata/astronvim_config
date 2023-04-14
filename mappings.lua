local luasnip = require("luasnip")
local aerial = require("aerial")

return {
  [""] = {
    -- leap.nvim
    ["f"] = { "<Plug>(leap-forward-to)" },
    ["t"] = { "<Plug>(leap-forward-till)" },
    ["F"] = { "<Plug>(leap-backward-to)" },
    ["T"] = { "<Plug>(leap-backward-till)" },
    ["gf"] = { "<Plug>(leap-from-window)" },
  },
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
    -- aerial
    ["[["]        = { "<cmd>AerialPrev<cr>", silent = true, desc = "Aerial Prev" },
    ["]]"]        = { "<cmd>AerialNext<cr>", silent = true, desc = "Aerial Next" },
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
    },
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
        else
          return { "<C-e><tab>" }
        end
      end,
    }
  },
  s = {
    -- LuaSnip jump index
    ["<C-k>"] = {
      function()
        if luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        else
          return { "<C-e><tab>" }
        end
      end,
    }
  },
}
