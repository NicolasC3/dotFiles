local vim = vim

--------------------------------------------------------------------------------
----------------------------------- Harpoon ------------------------------------
--------------------------------------------------------------------------------

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-a>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>h", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>t", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>n", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>s", function() harpoon:list():select(4) end)


--------------------------------------------------------------------------------
---------------------------------- Telescope -----------------------------------
--------------------------------------------------------------------------------

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


--------------------------------------------------------------------------------
------------------------------------- LSP --------------------------------------
--------------------------------------------------------------------------------

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References", nowait = true })
vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, { desc = "Goto T[y]pe Definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
vim.keymap.set("n", "K", function() return vim.lsp.buf.hover() end, { desc = "Hover" })
vim.keymap.set("n", "gK", function() return vim.lsp.buf.signature_help() end,
  { desc = "Signature Help" })
vim.keymap.set("i", "<c-k>", function() return vim.lsp.buf.signature_help() end,
  { desc = "Signature Help" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set({ "n", "v" }, "<leader>cc", vim.lsp.codelens.run, { desc = "Run Codelens" })
vim.keymap.set("n", "<leader>cC", vim.lsp.codelens.refresh, { desc = "Refresh & Display Codelens" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })


--------------------------------------------------------------------------------
------------------------------------ Custom ------------------------------------
--------------------------------------------------------------------------------

vim.keymap.set("n", "<esc>", "<cmd> noh <cr>", { desc = "Remove text hilight" })

-- Insert mode motions
vim.keymap.set("i", "<A-h>", "<Left>")
vim.keymap.set("i", "<A-j>", "<Down>")
vim.keymap.set("i", "<A-k>", "<Up>")
vim.keymap.set("i", "<A-l>", "<Right>")

vim.keymap.set("n", "-", "<cmd> Ex <cr>", { desc = "Opens Netrw" })
