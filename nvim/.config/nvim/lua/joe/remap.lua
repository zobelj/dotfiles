vim.g.mapleader = " "

-- open file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- shift J/K to move highlighted lines down/up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- leader Y to copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- when using dd to delete, dont copy to clipboard
vim.keymap.set("n", "d", [["_d]])

