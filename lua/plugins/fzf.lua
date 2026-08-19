vim.pack.add({
    { src = 'https://github.com/ibhagwan/fzf-lua' },
})

require('fzf-lua').setup()

vim.keymap.set('n', '<leader>fd', '<cmd>lua require("fzf-lua").files({ cwd = vim.fn.expand("%:p:h") })<cr>')
vim.keymap.set('n', '<leader>/', '<cmd>lua require("fzf-lua").live_grep({ cwd = vim.fn.expand("%:p:h") })<cr>')
