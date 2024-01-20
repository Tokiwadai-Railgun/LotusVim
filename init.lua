-- ハスヴィムの第一ファイル
-- Setting up mapleader 
vim.g.mapleader = " "

-- Autocommands
require('autocmds')
-- Configuring Lazy to import plugins
-- NOTE: Plugins are configured in the lua/plugins folder
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

-- Importing keymaps and autocmds
require("keymaps")
require("configs.cmp")
require("configs.lsp")
require("configs.alpha")
require("configs.copilot")

require("mason").setup()
require("lspconfig").lua_ls.setup({})

vim.g.OmniSharp_server_use_net6 = 1
