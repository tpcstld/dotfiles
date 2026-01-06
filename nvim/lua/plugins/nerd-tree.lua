return {
  "preservim/nerdtree",
  event = "VeryLazy",
  config = function()
    vim.g.NERDSpaceDelims = 1
  end,
  keys = {
    { "<leader>d", "<cmd>NERDTreeToggle<cr>", desc = "Toggle NERDTree" },
    { "<leader>r", "<cmd>NERDTreeFind<cr>", desc = "Find current file in NERDTree" },
  },
}
