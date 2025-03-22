--  Custom Settings Module 
-- This module contains all editor configuration options:
-- • Line numbering & relative numbers
-- • Mouse mode & clipboard integration
-- • Whitespace, split behavior, and tab settings
-- Customize these options to tailor Neovim to your workflow.

-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Flag to enable Nerd Font specific icons
vim.g.have_nerd_font = true

-- General Editor Options
vim.opt.number = true -- Enable line numbers
vim.opt.relativenumber = true -- Relative line numbers
vim.opt.mouse = "a" -- Enable mouse mode
vim.opt.showmode = false -- Hide mode since it's in the statusline

-- Sync system clipboard (scheduled to avoid startup delay)
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.opt.breakindent = true -- Enable break indent
vim.opt.undofile = true -- Save undo history
vim.opt.ignorecase = true -- Case-insensitive search...
vim.opt.smartcase = true -- ...unless capitals are used
vim.opt.signcolumn = "yes" -- Always show the sign column
vim.opt.updatetime = 250 -- Faster completion (and swap file)
vim.opt.timeoutlen = 300 -- Faster key sequence time-out
vim.opt.splitright = true -- New vertical splits go to the right
vim.opt.splitbelow = true -- New horizontal splits go below

-- Whitespace settings
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.inccommand = "split" -- Live preview for substitutions
vim.opt.cursorline = true -- Highlight the current line
vim.opt.scrolloff = 15 -- Keep 15 lines above/below the cursor

-- Tab configurations
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
