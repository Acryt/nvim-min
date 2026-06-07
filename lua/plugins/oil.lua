vim.pack.add({
    'https://github.com/stevearc/oil.nvim',
})

require('oil').setup({
    default_file_explorer = true,
    keymaps = {},
})

vim.keymap.set('n', '<leader>e', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', 'q', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' })
