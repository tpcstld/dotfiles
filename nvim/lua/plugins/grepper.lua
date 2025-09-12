vim.g.grepper = {
  tools = { "rg", "ag", "grep" },
}

return {
  "mhinz/vim-grepper",

  keys = {
    { "<leader>a", "<cmd>Grepper<cr>", desc = "Grepper" },
  },

  opt = {},
}
