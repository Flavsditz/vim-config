--  Formatting Module 
-- This module sets up autoformatting for various languages using conform.nvim.
-- It configures:
-- • A key mapping (<leader>f) to format the current buffer.
-- • Format-on-save behavior with custom settings per filetype.
-- • Specific formatter options for languages such as Lua, PHP, Blade, HTML, and JavaScript.
return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_format = "fallback" })
				end,
				mode = "",
				desc = "[F]ormat buffer",
			},
		},
		opts = {
			notify_on_error = false,
			format_on_save = function(bufnr)
				local disable_filetypes = { c = true, cpp = true }
				local lsp_format_opt
				if disable_filetypes[vim.bo[bufnr].filetype] then
					lsp_format_opt = "never"
				else
					lsp_format_opt = "fallback"
				end
				return {
					timeout_ms = 2500,
					lsp_format = lsp_format_opt,
				}
			end,
			formatters_by_ft = {
				lua = { "stylua" },
				php = { "pint" },
				blade = { "blade-formatter", "rustywind" },
				html = { "htmlbeautifier", "rustywind" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
			},
			formatters = {
				injected = { options = { ignore_errors = true } },
				pint = {
					meta = {
						url = "https://github.com/laravel/pint",
						description = "Laravel Pint is an opinionated PHP code style fixer for minimalists. Built on PHP-CS-Fixer, it helps maintain clean and consistent code.",
					},
					command = function()
						local pint_path = vim.fn.stdpath("data") .. "/mason/bin/pint"
						return pint_path
					end,
					args = { "$FILENAME" },
					stdin = false,
				},
			},
		},
	},
}
