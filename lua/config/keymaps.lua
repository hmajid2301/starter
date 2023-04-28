-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

map("x", "<leader>p", "\"_dP", { desc = "Paste without updating register" })


map("v", "<", "<gv", { desc = "Stay in visual mode during outdent" })
map("v", ">", ">gv", { desc = "Stay in visual mode during indent" })
map("v", "J", ":m >+1<CR>gv=gv", { desc = "Mouse selected lines down" })
map("v", "K", ":m >-2<CR>gv=gv", { desc = "Mouse selected lines up" })
