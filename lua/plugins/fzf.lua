vim.pack.add({
    { src = 'https://github.com/ibhagwan/fzf-lua' },
})

require('fzf-lua').setup()

vim.keymap.set('n', '<leader>fd', '<cmd>lua require("fzf-lua").files({ cwd = vim.fn.expand("%:p:h") })<cr>')
