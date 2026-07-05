-- misc

vim.keymap.set('n', '<C-s>', ':w <cr>')
vim.keymap.set('n', '<space><space>x', '<cmd>source % <cr>')
vim.keymap.set('n', '<space>x', ':.lua<cr>')
vim.keymap.set('v', '<space>x', ':lua<cr>')

-- Oil
vim.keymap.set('n', '-', ':Oil <cr>')

-- Telescope
vim.keymap.set("n", "<space>fh", require("telescope.builtin").help_tags)
vim.keymap.set("n", "<space>fd", require("telescope.builtin").find_files)
vim.keymap.set("n", "<space>en", function()
  require("telescope.builtin").find_files {
    cwd = vim.fn.stdpath("config")
  }
end)
