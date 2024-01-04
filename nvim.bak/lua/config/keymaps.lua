-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- HARPOON

local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>a", function()
  harpoon:list():append()
end)
vim.keymap.set("n", "<C-a>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<leader>h", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>j", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>k", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>l", function()
  harpoon:list():select(4)
end)
