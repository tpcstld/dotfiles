return {
  "yssl/QFEnter",
  config = function()
    vim.g.qfenter_keymap = {
      open = { "<CR>", "<2-LeftMouse>" },
      vopen = { "<C-V>" },
      hopen = { "<C-S>" },
      topen = { "t" },
    }
  end,
}
