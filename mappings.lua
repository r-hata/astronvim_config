local luasnip = require "luasnip"
local aerial = require "aerial"
local osc52 = require "osc52"

return {
  [""] = {
    -- leap.nvim
    ["f"] = { "<Plug>(leap-forward-to)" },
    ["t"] = { "<Plug>(leap-forward-till)" },
    ["F"] = { "<Plug>(leap-backward-to)" },
    ["T"] = { "<Plug>(leap-backward-till)" },
    ["gf"] = { "<Plug>(leap-from-window)" },
    -- zen-mode.nvim
    ["<C-z>"] = { "<cmd>ZenMode<cr>", silent = true },
  },
  n = {
    -- For US keyboard
    [";"] = { ":", noremap = true },
    [":"] = { ";", noremap = true },
    -- yankround
    ["p"] = { "<Plug>(yankround-p)" },
    ["P"] = { "<Plug>(yankround-P)" },
    ["gp"] = { "<Plug>(yankround-gp)" },
    ["gP"] = { "<Plug>(yankround-gP)" },
    ["<C-p>"] = { "<Plug>(yankround-prev)" },
    ["<C-n>"] = { "<Plug>(yankround-next)" },
    -- osc52
    ["Y"] = { osc52.copy_operator, expr = true },
    ["YY"] = { "Y_", remap = true },
    -- aerial
    ["[["] = { "<cmd>AerialPrev<cr>", silent = true, desc = "Aerial Prev" },
    ["]]"] = { "<cmd>AerialNext<cr>", silent = true, desc = "Aerial Next" },
    ["<leader>a"] = {
      function()
        aerial.toggle {
          focus = true,
          direction = "right",
        }
      end,
      desc = "Toggle Aerial",
    },
    ["<leader>i"] = { aerial.focus, desc = "Focus Aerial" },
    -- telescope
    ["<C-c>"] = { "<cmd>Telescope find_files<cr>", silent = true },
    ["<C-b>"] = { "<cmd>Telescope buffers<cr>", silent = true },
    ["q;"] = { "<cmd>Telescope command_history<cr>", silent = true, noremap = true },
    ["q/"] = { "<cmd>Telescope search_history<cr>", silent = true, noremap = true },
    -- ToggleTerm
    ["<A-i>"] = { "<cmd>ToggleTerm<cr>", silent = true },
    ["<leader>ts"] = { "<cmd>TermSelect<cr>", silent = true, desc = "ToggleTerm select" },
    ["<leader>tt"] = { "<cmd>ToggleTerm direction=tab<cr>", silent = true, desc = "ToggleTerm tab" },
  },
  x = {
    -- yankround
    ["p"] = { "<Plug>(yankround-p)" },
    ["gp"] = { "<Plug>(yankround-gp)" },
  },
  i = {
    -- LuaSnip jump index
    ["<C-k>"] = {
      function()
        if luasnip.expand_or_jumpable() then luasnip.expand_or_jump() end
      end,
    },
    -- delete
    ["<C-l>"] = { "<del>" },
  },
  s = {
    -- LuaSnip jump index
    ["<C-k>"] = {
      function()
        if luasnip.expand_or_jumpable() then luasnip.expand_or_jump() end
      end,
    },
  },
  t = {
    -- ToggleTerm
    ["<A-i>"] = { "<cmd>ToggleTerm<cr>", silent = true },
  },
  v = {
    -- osc52
    ["Y"] = { osc52.copy_visual },
  },
}
