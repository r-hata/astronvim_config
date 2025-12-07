-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing
local function jump_index()
  local luasnip = require "luasnip"
  if luasnip.expand_or_jumpable() then luasnip.expand_or_jump() end
end
local function aerial_toggle()
  require("aerial").toggle {
    focus = true,
    direction = "right",
  }
end
local function aerial_focus() require("aerial").focus() end
local function osc52_copy_visual() require("osc52").copy_visual() end

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = false,
        wrap = true,
        mouse = "",
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
        python3_host_prog = (function()
          local python3_path = os.getenv "HOME" .. "/.venv/bin/python3"
          if vim.fn.filereadable(python3_path) == 0 then python3_path = "" end
          return python3_path
        end)(),
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      [""] = {
        -- For US keyboard
        [";"] = { ":" },
        -- leap.nvim
        ["f"] = { "<Plug>(leap-forward)" },
        ["t"] = { "<Plug>(leap-forward-till)" },
        ["F"] = { "<Plug>(leap-backward)" },
        ["T"] = { "<Plug>(leap-backward-till)" },
        ["gf"] = { "<Plug>(leap-from-window)" },
      },
      n = {
        -- aerial
        ["[["] = { "<cmd>AerialPrev<cr>", silent = true, desc = "Aerial Prev" },
        ["]]"] = { "<cmd>AerialNext<cr>", silent = true, desc = "Aerial Next" },
        ["<leader>a"] = { aerial_toggle, desc = "Toggle Aerial" },
        ["<leader>i"] = { aerial_focus, desc = "Focus Aerial" },
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
      i = {
        -- LuaSnip jump index
        ["<C-k>"] = {
          jump_index,
        },
        -- delete
        ["<C-l>"] = { "<del>" },
      },
      s = {
        -- LuaSnip jump index
        ["<C-k>"] = {
          jump_index,
        },
      },
      t = {
        -- disable window moving
        ["<C-h>"] = false,
        ["<C-j>"] = false,
        ["<C-k>"] = false,
        ["<C-l>"] = false,
        -- ToggleTerm
        ["<A-i>"] = { "<cmd>ToggleTerm<cr>", silent = true },
      },
      v = {
        -- osc52
        ["Y"] = { osc52_copy_visual },
      },
    },
  },
}
