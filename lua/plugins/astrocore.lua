-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing
local function jump_index()
  local luasnip = require "luasnip"
  if luasnip.expand_or_jumpable() then luasnip.expand_or_jump() end
end

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {},
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = false, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = true, -- sets vim.opt.wrap
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
      -- first key is the mode
      [""] = {
        -- For US keyboard
        [";"] = { ":" },
      },
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- Snacks
        ["<C-c>"] = { function() require("snacks.picker").files() end },
        ["<C-b>"] = { function() require("snacks.picker").buffers() end },

        -- ToggleTerm
        ["<A-i>"] = { "<cmd>ToggleTerm<cr>", silent = true },
        ["<leader>ts"] = { "<cmd>TermSelect<cr>", silent = true, desc = "ToggleTerm select" },
        ["<leader>tt"] = { "<cmd>ToggleTerm direction=tab<cr>", silent = true, desc = "ToggleTerm tab" },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
      },
      i = {
        -- LuaSnip jump index
        ["<C-k>"] = { jump_index },
        -- delete
        ["<C-l>"] = { "<del>" },
      },
      s = {
        -- LuaSnip jump index
        ["<C-k>"] = { jump_index },
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
    },
  },
}
