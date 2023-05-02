local cmp = require("cmp")
return {
	"nvim-cmp",
	opts = {
		mapping = {
			["<C-j>"] = cmp.config.disable,
			["<C-k>"] = cmp.config.disable,
		},
	},
}
