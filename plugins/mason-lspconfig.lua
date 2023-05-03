local utils = require "astronvim.utils"
return {
  "mason-lspconfig.nvim",
  opts = function(_, opts)
    -- Ensure that opts.ensure_installed exists and is a table.
    if not opts.ensure_installed then opts.ensure_installed = {} end
    utils.list_insert_unique(opts.ensure_installed, "vimls")
  end,
}
