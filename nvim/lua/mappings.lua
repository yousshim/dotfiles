local U = require("utils")
vim.g.mapleader = ' '

U.nmap("<leader>p", ':Telescope find_files<CR>')

-- better window navigation
U.tmap("<C-w><C-w>", "<C-w><C-w>")
for _, map in pairs({ U.nmap, U.tmap })do
  map("<C-h>", "<C-w><C-h>")
  map("<C-j>", "<C-w><C-j>")
  map("<C-k>", "<C-w><C-k>")
  map("<C-l>", "<C-w><C-l>")
end
