vim.pack.add({
    'https://github.com/lewis6991/gitsigns.nvim'
})
require('gitsigns').setup({
    -- Обязательно включите эти два параметра для вложенных папок:
    watch_gitdir = {
        interval = 1000,
        follow_files = true   -- заставляет следовать за файлами в поддиректориях
    },
    attach_to_untracked = true, -- показывать знаки даже для еще не добавленных файлов

    -- Попробуйте также этот параметр, если изменения всё равно не видны:
    auto_attach = true,
})
