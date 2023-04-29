-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without updating register" })


vim.keymap.set("v", "<", "<gv", { desc = "Stay in visual mode during outdent" })
vim.keymap.set("v", ">", ">gv", { desc = "Stay in visual mode during indent" })
vim.keymap.set("v", "J", ":m >+1<CR>gv=gv", { desc = "Mouse selected lines down" })
vim.keymap.set("v", "K", ":m >-2<CR>gv=gv", { desc = "Mouse selected lines up" })
