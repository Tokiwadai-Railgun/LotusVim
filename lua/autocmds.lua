--	command = ':set autoindent expandtab tabstop=2 shiftwidth=2'

vim.api.nvim_create_augroup("cursorhold", { clear = true})
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter"}, {
  group = "cursorhold",
  command = ":set relativenumber",
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter"}, {
  command = ":set autoindent expandtab tabstop=4 shiftwidth=4"
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter"}, {
  command = ":set bri"
})
