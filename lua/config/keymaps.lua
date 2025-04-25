-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

-- use CTRL+c to copy to clipboard
map({ "v" }, "<C-c>", '"+y')
map({ "n", "v", "i" }, "<C-v>", '<cmd>normal! "+p<cr>')

-- save
map({ "n", "v", "i" }, "<C-s>", "<cmd>w<cr>")
map({ "n", "v", "i" }, "<D-s>", "<cmd>w<cr>")

-- undo
map({ "n", "v", "i" }, "<C-z>", "<cmd>normal! u<cr>")

-- select all
map({ "n", "v", "i" }, "<C-a>", "<cmd>normal! ggVG<cr>")

if vim.g.vscode then
else
  map({ "n", "v", "i" }, "<C-S-Left>", require("smart-splits").move_cursor_left)
  map({ "n", "v", "i" }, "<C-S-Down>", require("smart-splits").move_cursor_down)
  map({ "n", "v", "i" }, "<C-S-Up>", require("smart-splits").move_cursor_up)
  map({ "n", "v", "i" }, "<C-S-Right>", require("smart-splits").move_cursor_right)

  map({ "n", "v", "i" }, "<C-S-a>", require("smart-splits").move_cursor_left)
  map({ "n", "v", "i" }, "<C-S-s>", require("smart-splits").move_cursor_down)
  map({ "n", "v", "i" }, "<C-S-w>", require("smart-splits").move_cursor_up)
  map({ "n", "v", "i" }, "<C-S-d>", require("smart-splits").move_cursor_right)

  map({ "n", "v", "i" }, "<C-A-Left>", require("smart-splits").resize_left)
  map({ "n", "v", "i" }, "<C-A-Down>", require("smart-splits").resize_down)
  map({ "n", "v", "i" }, "<C-A-Up>", require("smart-splits").resize_up)
  map({ "n", "v", "i" }, "<C-A-Right>", require("smart-splits").resize_right)

  map({ "n", "v", "i" }, "<C-A-a>", require("smart-splits").resize_left)
  map({ "n", "v", "i" }, "<C-A-s>", require("smart-splits").resize_down)
  map({ "n", "v", "i" }, "<C-A-w>", require("smart-splits").resize_up)
  map({ "n", "v", "i" }, "<C-A-d>", require("smart-splits").resize_right)
end

-- use j to flash jump
map({ "n", "v" }, "j", require("flash").jump, { desc = "Flash" })


-- use ` to go to the start of word | 0 to EOL
map({ "n", "v" }, "`", "^")
map({ "n", "v" }, "0", "$")
