local M = {}

M.nmap = function(key, command)
  vim.api.nvim_set_keymap('n', key, command, {noremap=true, silent=true})
end

return M
