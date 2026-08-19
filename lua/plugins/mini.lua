vim.pack.add({'https://github.com/nvim-mini/mini.nvim'})

require('mini.files').setup({
    mappings = {
        go_in       = '<Right>',
        go_out      = '<Left>',
    },
})
require('mini.git').setup()
require('mini.icons').setup()
require('mini.notify').setup()
require('mini.cursorword').setup()
require('mini.move').setup()
require('mini.indentscope').setup({
    symbol = '┆',
})

vim.keymap.set('n', '<leader>e', '<cmd>lua MiniFiles.open(vim.fn.expand("%:p:h"))<cr>', { desc = 'MiniFiles' })
