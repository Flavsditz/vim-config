--  Top-Level init.lua 
-- This file bootstraps Neovim by:
--  • Installing and setting up lazy.nvim.
--  • Loading the base Kickstart configuration (lua/kickstart).
--  • Loading your custom configuration (lua/custom).
-- It also includes commented-out plugin lines from Kickstart for future customization.
--
-- (Feel free to uncomment or modify the additional plugin lines as you see fit.)

-- Bootstrap lazy.nvim if not already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local repo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", repo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Load base Kickstart configuration

--[[
-- Uncomment any of these lines to enable additional Kickstart plugins:
require("kickstart.plugins.debug")
require("kickstart.plugins.indent_line")
require("kickstart.plugins.lint")
require("kickstart.plugins.autopairs")
require("kickstart.plugins.neo-tree")
require("kickstart.plugins.gitsigns")  -- adds gitsigns recommended keymaps
--]]

-- Load custom configuration (settings, keymaps, autocommands, and plugins)
pcall(require, "custom.init")
