-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move lines up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down", silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up", silent = true })

-- Keep cursor centered when scrolling
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up centered" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down centered" })

-- Keep search term centered
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev search result centered" })

-- Paste without overwriting register
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })

-- LazyGit
vim.keymap.set("n", "<leader>gg", function()
  Snacks.lazygit()
end, { desc = "LazyGit" })

-- Delete to black hole register
vim.keymap.set("n", "<leader>d", '"_d', { desc = "Delete without yanking" })
vim.keymap.set("v", "<leader>d", '"_d', { desc = "Delete without yanking" })
-- File explorer (mini.files)
vim.keymap.set("n", "<leader>e", function()
  require("mini.files").open(vim.fn.getcwd())
end, { desc = "Open file explorer (project root)" })
