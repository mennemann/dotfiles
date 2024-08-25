vim.g.mapleader = " "
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

vim.opt.clipboard = "unnamedplus"

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set nowrap")
vim.cmd("set linebreak")
vim.cmd("set cursorline")
vim.cmd("set scrolloff=8")
vim.cmd("set noshowmode")

vim.wo.relativenumber = true
vim.opt.signcolumn = "number"

vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})
vim.keymap.set("n", "<leader>u", ":e!<CR>", {})
vim.keymap.set("n", "<A-z>", ":set wrap!<CR>")
vim.keymap.set("n", "<leader>w", "<C-w>")
