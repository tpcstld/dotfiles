-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","
vim.g.lazyvim_picker = "fzf"
vim.opt.listchars:append({
  tab = "▸\\",
  trail = "▫",
})
vim.opt.relativenumber = false
vim.opt.cursorlineopt = "number"
