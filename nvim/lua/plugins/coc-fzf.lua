return {
  "antoinemadec/coc-fzf",
  dependencies = {
    "neoclide/coc.nvim",
    "ibhagwan/fzf-lua",
    "junegunn/fzf",
    "junegunn/fzf.vim",
  },

  init = function()
    vim.g.coc_fzf_preview = "right:50%"
  end,
}
