return {
  "lervag/vimtex",
  lazy = false,
  config = function()
    vim.g.vimtex_view_method = "skim" -- on MacOS
    vim.g.vimtex_quickfix_open_on_warning = 0
  end,
}