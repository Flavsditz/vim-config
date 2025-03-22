--  Themes Module 
-- This module sets up your colorschemes and theme plugins.
-- It includes multiple theme options so you can easily switch between them:
-- • tokyo-night (via folke/tokyonight.nvim) – Configured to load "sonokai" style.
-- • sonokai (via sainnhe/sonokai) – A popular high-contrast theme.
-- • kanagawa (via rebelot/kanagawa.nvim) – Inspired by traditional Japanese aesthetics.
--
-- You can modify the init function or priorities here to change which theme is loaded.
return {
	{
		"folke/tokyonight.nvim",
		priority = 999, -- Load early before other plugins.
		init = function()
			-- Load the "sonokai" style from tokyo-night.
			vim.cmd.colorscheme("sonokai")
			-- Example of customizing highlights.
			vim.cmd.hi("Comment gui=none")
		end,
	},
	{
		"sainnhe/sonokai",
		priority = 1000, -- Load even earlier if desired.
	},
	{
		"rebelot/kanagawa.nvim",
	},
}
