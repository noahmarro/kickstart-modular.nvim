return {
  "lervag/vimtex",
  dependencies = {
    'micangl/cmp-vimtex',
  },
  init = function()
    vim.g.vimtex_view_method = "zathura"
  end,
}
