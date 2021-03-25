
-- vim.g.oceanic_next_terminal_bold = 1
-- vim.g.oceanic_next_terminal_italic = 1

vim.cmd('colorscheme OceanicNext')
-- vim.cmd('colorscheme ayu')
local bg = '#262626'
vim.cmd('autocmd ColorScheme * hi Normal guibg='.. bg ..' ctermbg=NONE')
vim.cmd('autocmd ColorScheme * hi LineNr guibg='.. bg ..' ctermbg=NONE')
vim.cmd('autocmd ColorScheme * hi SignColumn guibg='.. bg ..' ctermbg=NONE')
vim.cmd('autocmd ColorScheme * hi EndOfBuffer guibg='.. bg ..' ctermbg=NONE')
vim.cmd('autocmd ColorScheme * hi EndOfBuffer guifg='.. bg ..' ctermfg=NONE')
vim.cmd('autocmd ColorScheme * hi cursorLine guibg=#303030 ctermfg=236')
vim.cmd('autocmd ColorScheme * hi cursorLineNr guibg=#303030 ctermfg=236')

-- vim.cmd('let ayucolor="dark"')
-- vim.cmd('colorscheme ayu')

-- vim.cmd('colorscheme photon')
