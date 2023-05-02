return {
	{
		"AstroNvim/astrocommunity",
		tag = "stable",
	},
	{ import = "astrocommunity.pack.bash" },
	{ import = "astrocommunity.pack.go" },
	{ import = "astrocommunity.pack.json" },
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.python" },
	{ import = "astrocommunity.pack.rust" },
	{ import = "astrocommunity.pack.yaml" },
	{ import = "astrocommunity.colorscheme.tokyonight" },
	{
		"tokyonight.nvim",
		opts = {
			styles = {
				comments = { italic = false },
			},
		},
	},
	{ import = "astrocommunity.editing-support.zen-mode-nvim" },
	{ import = "astrocommunity.git.git-blame-nvim" },
}
