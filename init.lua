return {
  -- colorscheme
  colorscheme = "tokyonight",
  { -- user commands
    -- :VDsplit
    vim.api.nvim_create_user_command("VDsplit", "vertical diffsplit <args>", { nargs = 1, complete = "file" }),
  }
}
