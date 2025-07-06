-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<ESC>", { silent = true })
vim.keymap.set({ "s", "i" }, "<C-l>", function()
  return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<cr>" or "<Tab>"
end, { expr = true, desc = "Jump Next" })
vim.keymap.set({ "i", "s" }, "<C-h>", function()
  return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<cr>" or "<S-Tab>"
end, { expr = true, desc = "Jump Previous" })
vim.keymap.set("n", "<leader>fF", function()
  Snacks.picker.files({ hidden = true, ignored = true })
end, { desc = "Find in files in dir" })
