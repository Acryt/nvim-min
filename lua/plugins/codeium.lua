vim.pack.add({
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/Exafunction/windsurf.nvim'
})
require('codeium').setup({
    enable_cmp_source = false, -- Отключаем интеграцию с nvim-cmp
    virtual_text = {
        enabled = false,        -- Включаем отображение подсказки прямо под курсором
    },
})
vim.keymap.set('i', '<C-g>', function()
    return vim.fn['codeium#Accept']()
end, { expr = true, silent = true })
vim.keymap.set('i', '<C-;>', function()
    return vim.fn['codeium#CycleCompletions'](1)
end, { expr = true, silent = true })
vim.keymap.set('i', '<C-,>', function()
    return vim.fn['codeium#CycleCompletions'](-1)
end, { expr = true, silent = true })
vim.keymap.set('i', '<C-x>', function()
    return vim.fn['codeium#Clear']()
end, { expr = true, silent = true })
