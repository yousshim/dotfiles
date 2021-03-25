vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

-- Add your packages

paq 'neovim/nvim-lspconfig'
paq 'nvim-lua/completion-nvim'
paq 'nvim-treesitter/nvim-treesitter'
paq 'mhartington/oceanic-next'
paq 'ayu-theme/ayu-vim'
paq 'axvr/photon.vim'
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'
paq 'kyazdani42/nvim-tree.lua'
paq 'kyazdani42/nvim-web-devicons'
paq {'glepnir/galaxyline.nvim', branch="main"}
paq 'windwp/nvim-autopairs'
-- paq 'norcalli/snippets.nvim'
-- paq 'SirVer/ultisnips'
paq 'windwp/nvim-ts-autotag'
