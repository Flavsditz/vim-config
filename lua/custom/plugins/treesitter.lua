--  Treesitter Module 
-- This module configures nvim-treesitter to provide enhanced syntax
-- highlighting, indentation, and code understanding.
-- It ensures installation of various language parsers and includes a
-- custom setup for Blade files using tree-sitter-blade.

return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			{
				"EmranMR/tree-sitter-blade",
				config = function()
					local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
					parser_config.blade = {
						install_info = {
							url = "https://github.com/EmranMR/tree-sitter-blade",
							files = { "src/parser.c" },
							branch = "main",
						},
						filetype = "blade",
					}
				end,
			},
		},
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
			ensure_installed = {
				"bash",
				"c",
				"diff",
				"html",
				"lua",
				"luadoc",
				"markdown",
				"markdown_inline",
				"query",
				"vim",
				"vimdoc",
				"asm",
				"css",
				"go",
				"javascript",
				"typescript",
				"kotlin",
				"python",
				"java",
				"php",
				"blade",
				"vue",
			},
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { "ruby" },
			},
			indent = { enable = true, disable = { "ruby" } },
		},
	},
}
