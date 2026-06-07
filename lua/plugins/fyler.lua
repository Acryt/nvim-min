vim.pack.add({
    'https://github.com/A7Lavinraj/fyler.nvim',
})

require('fyler').setup({
    views = {
        finder = {
            close_on_select = false,
            default_explorer = true,
            follow_current_file = '<boolean>',
            watcher = {
                enabled = true,
            },
            win = {
                kind = 'float',
                kinds = {
                }
            },
        },
        win_opts = {
            wrap = true,
        }
    },
})

vim.keymap.set('n', '<leader>e', '<cmd>Fyler<cr>', { desc = 'Fyler' })
