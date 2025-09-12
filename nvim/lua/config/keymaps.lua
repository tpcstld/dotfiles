-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>t", "<cmd>FzfLua git_files<cr>", { desc = "FzfLua git_files" })
vim.keymap.set("n", "<leader>r", function()
  Snacks.explorer()
end, { desc = "File Tree (cwd)" })
vim.keymap.set("n", "<leader>d", function()
  Snacks.explorer({ cwd = LazyVim.root() })
end, { desc = "File Tree (cwd)" })
