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
vim.opt.signcolumn = "auto"

vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})
vim.keymap.set("n", "<leader>u", ":e!<CR>", {})
vim.keymap.set("n", "<A-z>", ":set wrap!<CR>")

vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>")

vim.keymap.set("n", "<leader>w", "<C-w>")
vim.keymap.set("n", "<leader>w<CR>", ":term<CR>")
vim.keymap.set("n", "<leader>wm", ":WinShift<CR>")

vim.keymap.set("n", "´", "`")
vim.keymap.set("x", "p", "P")

if vim.fn.has('win32') == 1 then
    vim.cmd("language en_US")
    vim.keymap.set("n", "<leader>r", ":!explorer %:h<CR><CR>")
elseif vim.fn.has('unix') == 1 then
    vim.keymap.set("n", "<leader>r", ":silent !xdg-open %:h &<CR>")
end
