-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- No swaping lines.
vim.keymap.del({ "n", "i", "v" }, "<A-k>")
vim.keymap.del({ "n", "i", "v" }, "<A-j>")

-- No <leader>b stuff.
vim.keymap.del("n", "<leader>bb")
vim.keymap.del("n", "<leader>bd")
vim.keymap.del("n", "<leader>bo")
vim.keymap.del("n", "<leader>bD")

-- FzfLua
vim.keymap.set("n", "<leader>t", "<cmd>FzfLua git_files<cr>", { desc = "FzfLua git_files" })
vim.keymap.set("n", "<leader>b", "<cmd>FzfLua buffers<cr>", { desc = "FzfLua buffers" })

-- Clear highlighting
vim.keymap.set("n", "<leader>hl", '<cmd>let @/ = ""<cr>', { desc = "Clear Search Highlighting" })
