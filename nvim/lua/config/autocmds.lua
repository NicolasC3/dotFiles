-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd([[colorscheme catppuccin-mocha]])
require("luasnip.loaders.from_lua").load({ paths = { "~/.config/nvim/lua/snippets/" } })
