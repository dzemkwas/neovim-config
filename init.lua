require("config.lazy")

vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.clipboard = "unnamedplus"

vim.keymap.set('n', '<C-s>', ':w <cr>')
vim.keymap.set('n', '<space><space>x', '<cmd>source % <cr>')
vim.keymap.set('n', '<space>x', ':.lua<cr>')
vim.keymap.set('v', '<space>x', ':lua<cr>')
vim.keymap.set('n', '-', ':Oil <cr>')
vim.keymap.set('n', '<space>t', ':Floaterminal<cr>')

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = false,
  update_in_insert = false
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})


vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
