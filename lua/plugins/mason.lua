vim.pack.add({
    'http://github.com/mason-org/mason.nvim',
})

require('mason').setup({})

vim.keymap.set('n', '<leader>m', '<cmd>Mason<CR>', { desc = 'Mason' })

-- vim.env.PATH = vim.fn.stdpath('data') .. '/mason/bin:' .. vim.env.PATH
