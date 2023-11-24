vim.g.mapleader = " "

local keymap = vim.keymap

-- -------- INSERT mod -------- ---
keymap.set("i", "jk", "<ESC>")

-- -------- VISUAL mod -------- ---
-- dan hang or duo hang yi dong
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- -------- NORMAL mod -------- ---
-- windows
keymap.set("n", "<leader>sv", "<C-w>v") -- horizontal add windows
keymap.set("n", "<leader>sh", "<C-w>s") -- vertical add windows
keymap.set("n", "<leader>sq", "<C-w>q") -- quit split window

-- quit hightlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- save file
keymap.set("n", "W", ":w<CR>")
keymap.set("n", "S", ":wq<CR>")
