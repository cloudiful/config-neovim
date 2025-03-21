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

-- use wasd to move around like a game
map({ "n", "v" }, "w", "k")
map({ "n", "v" }, "s", "j")
map({ "n", "v" }, "a", "h")
map({ "n", "v" }, "d", "l")

-- use WASD to move quickly
map({ "n", "v" }, "W", "<C-b>") -- page up
map({ "n", "v" }, "S", "<C-f>") -- page down
map({ "n", "v" }, "A", "ge") -- move to left word's end
map({ "n", "v" }, "D", "e") -- move to right word's end

-- use k to delete
map({ "n", "v" }, "k", "d")
map("n", "kk", "dd") -- delete line

-- use q e to insert append like playing rainbow six siege :)
map({ "n", "v" }, "q", "i") -- q to insert
map({ "n", "v" }, "e", "a") -- e to append

-- use ` to go to the start of word | 0 to EOL
map({ "n", "v" }, "`", "^")
map({ "n", "v" }, "0", "$")
