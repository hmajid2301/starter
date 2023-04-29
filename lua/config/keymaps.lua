-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Paste
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without updating register" })

-- Copy
vim.keymap.set("v", "<", "<gv", { desc = "Stay in visual mode during outdent" })
vim.keymap.set("v", ">", ">gv", { desc = "Stay in visual mode during indent" })
vim.keymap.set("v", "J", ":m >+1<CR>gv=gv", { desc = "Mouse selected lines down" })
vim.keymap.set("v", "K", ":m >-2<CR>gv=gv", { desc = "Mouse selected lines up" })

-- Navigation
vim.keymap.set("n", "J", "mzJ`z", { desc = "combine with line up" })
vim.keymap.set("n", "<leader>mm", require("telescope").extensions.zoxide.list, { desc = "Change directory using zoxide" })
vim.keymap.set("n", "<leader>uu", "<cmd>Telescope undo<cr>", { desc = "Show undoo tree" })
vim.keymap.set("n", "H", "^", { desc = "Move to first character in line" })
vim.keymap.set("n", "L", "$", { desc = "Move to last character in line" })

-- Keep matches center screen when cycling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Keep cursor in middle when jumping" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keep cursor in middle when jumping" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Keep cusors in middle" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Fwd  search '/' or '?'" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Back search '/' or '?'" })

-- ["<C-Enter>"] = { "o<Esc>", desc = "Create new line below without leaving normal mode" },
-- ["<C-Enter>"] = { "O<Esc>", desc = "Create new line above without leaving normal mode" },
