vim.pack.add({ 'https://github.com/nvim-mini/mini.nvim' })

require('mini.files').setup()
require('mini.git').setup()
vim.keymap.set('n', '<leader>e', '<cmd>lua MiniFiles.open()<cr>', { desc = 'MiniFiles' })

require('mini.icons').setup()
