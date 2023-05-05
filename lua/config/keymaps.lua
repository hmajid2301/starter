-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Util = require("lazyvim.util")

-- Paste
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without updating register" })

-- Copy
vim.keymap.set("v", "<", "<gv", { desc = "Stay in visual mode during outdent" })
vim.keymap.set("v", ">", ">gv", { desc = "Stay in visual mode during indent" })
vim.keymap.set("v", "J", ":m >+1<CR>gv=gv", { desc = "Mouse selected lines down" })
vim.keymap.set("v", "K", ":m >-2<CR>gv=gv", { desc = "Mouse selected lines up" })

-- Navigation
vim.keymap.set(
  "n",
  "<leader>zz",
  require("telescope").extensions.zoxide.list,
  { desc = "Change directory using zoxide" }
)
vim.keymap.set("n", "<leader>uu", "<cmd>Telescope undo<cr>", { desc = "Show undoo tree" })
vim.keymap.set("n", "<C-H>", "^", { desc = "Move to first character in line" })
vim.keymap.set("n", "<C-L>", "$", { desc = "Move to last character in line" })

-- Keep matches center screen when cycling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Keep cursor in middle when jumping" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keep cursor in middle when jumping" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Keep cusors in middle" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Fwd  search '/' or '?'" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Back search '/' or '?'" })

-- Toggle floating windows
vim.keymap.set("n", "<leader>tt", function()
  Util.float_term({ "gdu" }, { cwd = Util.get_root(), esc_esc = false })
end, { desc = "Toggle: Go Disk Usage" })
vim.keymap.set("n", "<leader>tu", function()
  Util.float_term({ "btm" }, { cwd = Util.get_root(), esc_esc = false })
end, { desc = "Toggle: Bottom" })

vim.keymap.set("n", "<A-J>", "mzJ`z", { desc = "combine with line up" })

-- Newlines
vim.keymap.set("n", "<leader>o", 'o<Esc>0"_D', { desc = "Create a new line below without leaving normal mode" })
vim.keymap.set("n", "<leader>O", 'O<Esc>0"_D', { desc = "Create a new line above without leaving normal mode" })

-- Tmux
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<C-h>", "<cmd>lua require'tmux'.move_left()<cr>", { desc = "Go to left window" })
map("n", "<C-j>", "<cmd>lua require'tmux'.move_bottom()<cr>", { desc = "Go to lower window" })
map("n", "<C-k>", "<cmd>lua require'tmux'.move_top()<cr>", { desc = "Go to upper window" })
map("n", "<C-l>", "<cmd>lua require'tmux'.move_right()<cr>", { desc = "Go to right window" })
