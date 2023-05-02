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
		-- aerial
		["[["] = { "<cmd>AerialPrev<cr>", silent = true, desc = "Aerial Prev" },
		["]]"] = { "<cmd>AerialNext<cr>", silent = true, desc = "Aerial Next" },
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
		-- telescope
		["<C-c>"] = { "<cmd>Telescope find_files<cr>", silent = true },
		["<C-b>"] = { "<cmd>Telescope buffers<cr>", silent = true },
		["q;"] = { "<cmd>Telescope command_history<cr>", silent = true, noremap = true },
		["q/"] = { "<cmd>Telescope search_history<cr>", silent = true, noremap = true },
		-- ToggleTerm
		["<C-t>"] = { "<cmd>ToggleTerm<cr>", silent = true },
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
				if luasnip.expand_or_jumpable() then
					luasnip.expand_or_jump()
				else
					return { "<C-e><tab>" }
				end
			end,
		},
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
		},
	},
	t = {
		-- ToggleTerm
		["<C-t>"] = { "<cmd>ToggleTerm<cr>", silent = true },
	},
}
