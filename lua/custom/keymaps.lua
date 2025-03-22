--  Global Keymaps Module 
-- This module defines global key mappings for:
-- • Clearing search highlights
-- • Navigating between windows (using Ctrl + hjkl)
-- • File explorer shortcuts and disabling arrow keys
-- Adjust these mappings to enhance your editing efficiency.
-- Clear search highlighting on <Esc>

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Diagnostic keymap to open the quickfix list for diagnostics
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic quickfix list" })

-- Terminal mode: <Esc><Esc> exits terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Disable arrow keys in normal mode to encourage using hjkl
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>', { desc = "Disable left arrow" })
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>', { desc = "Disable right arrow" })
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>', { desc = "Disable up arrow" })
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>', { desc = "Disable down arrow" })

-- Window navigation (Ctrl + h/j/k/l)
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to upper window" })

-- File explorer keymaps
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex, { desc = "Open file explorer (full screen)" })
vim.keymap.set("n", "<leader>ev", vim.cmd.Vex, { desc = "Open file explorer (vertical split)" })
vim.keymap.set("n", "<leader>eh", vim.cmd.Sex, { desc = "Open file explorer (horizontal split)" })
vim.keymap.set("n", "<leader>el", vim.cmd.Lex, { desc = "Open file explorer (sidebar)" })
