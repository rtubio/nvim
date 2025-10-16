-- nvim lua configuration file
-- rtpardavila@gmail.com
-- 2025-FEB
-- Approach: (1) basic nvim configuraiton, (2) lua lazy package manager configuration, (3) plugins directory auto-load
-- Minimalistic configuration within init.lua, most of the configuration should be moved to either "config" or "plugins"

-- Basic NVIM configuration before loading any plugins or Lua specifics
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- nerd font to be used for icon customization
vim.g.have_nerd_font = true
-- optionally enable 24-bit colour
vim.opt.termguicolors = true
-- removes empty line ~ markers
vim.opt.fillchars = { eob = ' ' }
vim.opt.cmdheight = 2 -- more space in the neovim command line
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.wrap = true -- wrap lines
-- use treesitter folding
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- # ### nvim.lazy 
-- Make sure to setup `mapleader` and `maplocalleader` before loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ","
-- vim.g.maplocalleader = "\\"

-- # ### Shortcuts
vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTreeToggle<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", {silent = true, noremap = true})
-- on_attach
-- vim.keymap.set("n", "l", edit_or_open,          opts("Edit Or Open"))
-- vim.keymap.set("n", "L", vsplit_preview,        opts("Vsplit Preview"))
-- vim.keymap.set("n", "h", api.tree.close,        opts("Close"))
-- vim.keymap.set("n", "H", api.tree.collapse_all, opts("Collapse All"))

-- Lazy package manager configuration goes first
require("config.lazy")
-- Configuration for other packages follows
require("config.nvim-tree")
-- Copilot configuration
require("config.copilot")

