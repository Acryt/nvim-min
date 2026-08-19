local set = vim.keymap.set

set('n', '<leader>ff', vim.lsp.buf.format, { desc = 'Format file' })
set("n", "ZQ", ":qa!<CR>", { desc = "Quit all without saving" })
