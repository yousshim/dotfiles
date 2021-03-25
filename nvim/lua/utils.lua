local M = {}

M.nmap = function(key, command)
  vim.api.nvim_set_keymap('n', key, command, {noremap=true, silent=true})
end

M.tmap = function(key, command)
  vim.api.nvim_set_keymap('t', key, "<C-\\><C-n>" .. command, {noremap=true, silent=true})
end

M.autocmd = function(event, pattern, command)
  vim.cmd("autocmd "..event.." "..pattern.." "..command)
end

function M.is_buffer_empty()
  -- Check whether the current buffer is empty
  return vim.fn.empty(vim.fn.expand('%:t')) == 1
end

function M.has_width_gt(cols)
  -- Check if the windows width is greater than a given number of columns
  return vim.fn.winwidth(0) / 2 > cols
end

return M
