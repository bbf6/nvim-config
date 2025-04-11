require("nvim-autopairs").setup({
  disable_filetype = { "TelescopePrompt", "spectre_panel" },
  disable_in_macro = true,
  disable_in_visualblock = false,
  enable_check_bracket_line = true,
  ignored_next_char = "[%w%.]",
  enable_moveright = true,
  enable_afterquote = true,
  map_cr = true,
  map_bs = true
})
