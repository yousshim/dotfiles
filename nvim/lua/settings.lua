vim.o.completeopt = "menuone,noselect"
vim.o.hidden=true
vim.wo.wrap=false
vim.o.fileencoding="utf-8"
vim.o.mouse="a"
vim.o.splitbelow=true
vim.o.termguicolors=true
vim.o.splitright=true
vim.o.t_Co="256"
vim.o.conceallevel=0
vim.bo.tabstop=2
vim.bo.shiftwidth=2
vim.bo.expandtab=true
vim.bo.smartindent=true
vim.wo.number = true
vim.wo.cursorline=true
-- vim.o.showtabline=2
vim.o.showmode=false
vim.o.backup=false
vim.o.writebackup=false
vim.wo.signcolumn="yes"
vim.o.clipboard="unnamedplus"
vim.o.autoread=true
vim.o.ignorecase=true
vim.o.smartcase=true

local autocmd = require("utils").autocmd

autocmd("TermOpen", "*", "setlocal nonumber")
autocmd("BufWinEnter,WinEnter", "term://*", "startinsert")
