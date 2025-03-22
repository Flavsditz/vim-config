--  Custom init.lua 
-- This file loads your custom settings, keymaps, autocommands, and plugin definitions.
-- It also configures lazy.nvim's UI, enabling Nerd Font icons if available.
-- (Additional customizations can be added here as needed.)

-- Load custom modules
require("custom.settings") -- Editor options, clipboard, whitespace, etc.
require("custom.keymaps") -- Global key mappings.
require("custom.autocommands") -- Autocommand definitions.

-- Define custom plugin modules
local custom_plugins = {
	require("custom.plugins.core"),
	require("custom.plugins.telescope"),
	require("custom.plugins.lsp"),
	require("custom.plugins.formatting"),
	require("custom.plugins.completion"),
	require("custom.plugins.themes"),
	require("custom.plugins.treesitter"),
	require("custom.plugins.misc"),
	require("custom.plugins.debug"),
	require("custom.plugins.neo-tree"),
	-- Debug configuration is already included in Kickstart, so it's omitted here.
}

-- Setup lazy.nvim with your custom plugins and UI configuration
require("lazy").setup(custom_plugins, {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
