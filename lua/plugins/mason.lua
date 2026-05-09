vim.pack.add({
    'http://github.com/mason-org/mason.nvim',
})

require('mason').setup({})

vim.keymap.set('n', '<leader>m', '<cmd>Mason<cr>', { desc = 'Mason' })
