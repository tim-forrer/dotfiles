return {
  "lervag/vimtex",
  lazy = false,
  config = function()
    if vim.loop.os_uname().sysname == "Darwin" then
      vim.g.vimtex_view_method = "skim" -- on MacOS
    else
      vim.g.vimtex_view_method = "zathura" -- on Linux
    end
    vim.g.vimtex_quickfix_open_on_warning = 0
  end,
}
