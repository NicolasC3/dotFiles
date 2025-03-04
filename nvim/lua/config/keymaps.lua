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

vim.keymap.set("n", "<leader>gt", ":call SVED_Sync()<CR>")

-- Insert mode motions
vim.keymap.set("i", "<A-h>", "<Left>")
vim.keymap.set("i", "<A-j>", "<Down>")
vim.keymap.set("i", "<A-k>", "<Up>")
vim.keymap.set("i", "<A-l>", "<Right>")

vim.keymap.set("n", "-", "<cmd>Ex<cr><cr>", { silent = true })

vim.keymap.set({ "n", "x" }, "<leader>sr", function()
  require("ssr").open()
end)

-- Sacrilege
-- vim.keymap.set("n", "j", "h")
-- vim.keymap.set("n", "k", "j")
-- vim.keymap.set("n", "l", "k")
-- vim.keymap.set("n", "m", "l")
-- vim.keymap.set("n", "h", "m")
--
-- vim.keymap.set("v", "j", "h")
-- vim.keymap.set("v", "k", "j")
-- vim.keymap.set("v", "l", "k")
-- vim.keymap.set("v", "m", "l")
-- vim.keymap.set("v", "h", "m")

-- Commands
vim.api.nvim_create_user_command("Notes", "vi /home/nc/Nextcloud/Notes", {})
-- vim.cmd("abb notes Notes")
vim.cmd("abb fmt !fmt -w 80")
-- vim.cmd("command -range Copy s/\n/ /|normal yy|undo")
