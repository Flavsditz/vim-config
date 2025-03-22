--  Miscellaneous Plugins Module 
-- This module contains a collection of smaller, independent plugins that add
-- additional functionality and visual enhancements:
-- • mini.nvim            – Enhances text objects, surroundings, and statusline.
-- • vim-blade            – Provides improved syntax and editing for Blade templates.
-- • todo-comments.nvim   – Highlights TODOs, FIXMEs, and similar annotations.
return {
	{
		"echasnovski/mini.nvim",
		config = function()
			-- Configure mini.ai for improved around/inside text objects
			require("mini.ai").setup({ n_lines = 500 })

			-- Configure mini.surround for quick add, change, and delete of surroundings
			require("mini.surround").setup()

			-- Set up a simple and customizable statusline using mini.statusline
			local statusline = require("mini.statusline")
			statusline.setup({ use_icons = vim.g.have_nerd_font })

			-- Override the default section for cursor location to show LINE:COLUMN
			statusline.section_location = function()
				return "%2l:%-2v"
			end
		end,
	},
	{
		"jwalton512/vim-blade",
	},
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
}
