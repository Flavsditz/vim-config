--  Autocommands Module 
-- This module sets up autocommands to automate tasks:
-- • Highlights text on yank for visual feedback
-- Add more autocommands here as needed to further customize behavior.

-- Highlight on yank: visually indicate when text is yanked
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("custom-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
