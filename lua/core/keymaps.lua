local keymap = vim.keymap


-- 设置主键
vim.g.mapleader = " "


----------------普通模式-----------------
keymap.set("n", "<M-j>", ":m '>+1<CR>gv=gv")
keymap.set("n", "<M-k>", ":m '<-2<CR>gv=gv")


----------------正常模式-----------------
-- 搜索时，leader + nh 取消高亮
keymap.set("n", "<leader>nh", "")


----------------nvim tree-----------------
keymap.set("n", "tr", ":NvimTreeToggle<CR>")
