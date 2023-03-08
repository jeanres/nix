require('plugins')

-- Hybrid line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.wrap = false

-- Global status line
vim.opt.laststatus = 3

vim.opt.termguicolors = true

vim.g.mapleader = " "

vim.api.nvim_create_autocmd({"BufWritePre"}, {
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

vim.cmd[[colorscheme tokyonight-night]]

