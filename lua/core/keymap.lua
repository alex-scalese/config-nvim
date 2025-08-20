local keymap = vim.keymap

vim.g.mapleader = " "
keymap.set({ "n"}, "<Space>", "<Nop>", {silent = true})

-- line moving 
keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })

keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })

keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })
keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })

-- jump between windows
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window Left" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window Down" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window Up" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window Right" })
